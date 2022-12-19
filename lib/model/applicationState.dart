import 'dart:async';
import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:gtk_flutter/firebase_options.dart';
import 'package:gtk_flutter/model/attending.dart';
import 'package:gtk_flutter/model/guestBook.dart';
import 'package:gtk_flutter/model/locationList.dart';
//import '../firebase_options.dart';
//import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:gtk_flutter/controller/geoCode.dart';

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }
  double latitude = 1.0;
  double longitude = 1.0;
  var _countryName = "Spain";

  void setCountry(latitude, longitude) {
    this.latitude = latitude;
    this.longitude = longitude;
  }

//String setCountry(latitude, longitude) {
//    countryName = "France";
//    this.latitude = latitude;
//    this.longitude = longitude;
//
//    return countryName;
//  }
  Future<void> setAddress(double lat, double lang) async {
    //if (lat == null || lang == null) return "";
    this.latitude = lat;
    this.longitude = lang;
    GeoCode geoCode = GeoCode();
    // await Future.delayed(const Duration(seconds: 5), () {});
    Address address =
        await geoCode.reverseGeocoding(latitude: lat, longitude: lang);

    // return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
    // ignore: unnecessary_statements
    //countryName = " ${address.countryName}";
    _countryName = " ${address.countryName}";
    //return " ${address.countryName}";
    notifyListeners();
  }

  String get getCountry {
    //countryName = "France";
    //this.latitude = latitude;
    //this.longitude = longitude;

    return _countryName;
  }

  void getCurrentLocation(latitude, longitude) {
    _countryName = "Sweden";
    notifyListeners();
  }

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

  bool _emailVerified = false;
  bool get emailVerified => _emailVerified;

  StreamSubscription<QuerySnapshot>? _guestBookSubscription;
  List<GuestBookMessage> _guestBookMessages = [];
  List<GuestBookMessage> get guestBookMessages => _guestBookMessages;

  StreamSubscription<QuerySnapshot>? _locationListSubscription;
  List<LocationListMessage> _locationListMessages = [];
  List<LocationListMessage> get locationListMessages => _locationListMessages;

  int _attendees = 0;
  int get attendees => _attendees;
  String currentaddress = "no address";

  static Map<String, dynamic> defaultValues = <String, dynamic>{
    'event_date': 'October 18, 2022',
    'enable_free_swag': false,
    'call_to_action': 'Join us for a day full of Firebase Workshops and Pizza!',
  };

  // ignoring lints on these fields since we are modifying them in a different
  // part of the codelab
  // ignore: prefer_final_fields
  bool _enableFreeSwag = defaultValues['enable_free_swag'] as bool;
  bool get enableFreeSwag => _enableFreeSwag;

  // ignore: prefer_final_fields
  String _eventDate = defaultValues['event_date'] as String;
  String get eventDate => _eventDate;

  // ignore: prefer_final_fields
  String _callToAction = defaultValues['call_to_action'] as String;
  String get callToAction => _callToAction;

  Attending _attending = Attending.unknown;
  StreamSubscription<DocumentSnapshot>? _attendingSubscription;
  Attending get attending => _attending;
  set attending(Attending attending) {
    final userDoc = FirebaseFirestore.instance
        .collection('attendees')
        .doc(FirebaseAuth.instance.currentUser!.uid);
    if (attending == Attending.yes) {
      userDoc.set(<String, dynamic>{'attending': true});
    } else {
      userDoc.set(<String, dynamic>{'attending': false});
    }
  }

  Future<DocumentReference> addMessageToTrip(String message) {
    if (!_loggedIn) {
      throw Exception('Must be logged in');
    }

    return FirebaseFirestore.instance.collection('trip').add(<String, dynamic>{
      'text': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  Future<DocumentReference> addMessageToLocationList(String message) {
    if (!_loggedIn) {
      throw Exception('Must be logged in');
    }

    return FirebaseFirestore.instance
        .collection('locationlist')
        .add(<String, dynamic>{
      'text': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  Future<DocumentReference> addMessageToGuestBook(String message) {
    if (!_loggedIn) {
      throw Exception('Must be logged in');
    }

    return FirebaseFirestore.instance
        .collection('guestbook')
        .add(<String, dynamic>{
      'text': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]);

    FirebaseFirestore.instance
        .collection('attendees')
        .where('attending', isEqualTo: true)
        .snapshots()
        .listen((snapshot) {
      _attendees = snapshot.docs.length;
      notifyListeners();
    });

    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
        _emailVerified = user.emailVerified;

        _guestBookSubscription = FirebaseFirestore.instance
            .collection('guestbook')
            .orderBy('timestamp', descending: true)
            .snapshots()
            .listen((snapshot) {
          _guestBookMessages = [];
          for (final document in snapshot.docs) {
            _guestBookMessages.add(
              GuestBookMessage(
                name: document.data()['name'] as String,
                message: document.data()['text'] as String,
              ),
            );
          }
          notifyListeners();
        });

        _locationListSubscription = FirebaseFirestore.instance
            .collection('locationlist')
            .orderBy('timestamp', descending: true)
            .snapshots()
            .listen((snapshot) {
          _locationListMessages = [];
          for (final document in snapshot.docs) {
            _locationListMessages.add(
              LocationListMessage(
                name: document.data()['name'] as String,
                message: document.data()['text'] as String,
              ),
            );
          }
          notifyListeners();
        });

        _attendingSubscription = FirebaseFirestore.instance
            .collection('attendees')
            .doc(user.uid)
            .snapshots()
            .listen((snapshot) {
          if (snapshot.data() != null) {
            if (snapshot.data()!['attending'] as bool) {
              _attending = Attending.yes;
            } else {
              _attending = Attending.no;
            }
          } else {
            _attending = Attending.unknown;
          }
          notifyListeners();
        });
      } else {
        _loggedIn = false;
        _emailVerified = false;
        _guestBookMessages = [];
        _guestBookSubscription?.cancel();
        _attendingSubscription?.cancel();
        _locationListMessages = [];
        _locationListSubscription?.cancel();
      }
      notifyListeners();
    });
  }

  Future<void> refreshLoggedInUser() async {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      return;
    }

    await currentUser.reload();
  }
}
