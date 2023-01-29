import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' // new
    hide
        EmailAuthProvider,
        PhoneAuthProvider; // new
import 'package:gtk_flutter/model/placehistory.dart';
import 'package:gtk_flutter/screens/countrylistpage.dart';
//import 'package:gtk_flutter/src/location.dart';
import '../firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // new
import 'dart:async';

//import '../model/location.dart';

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;
  //bool _firstLocation = true;
  //StreamSubscription<QuerySnapshot>? _placeHistorySubscription;
  StreamSubscription<QuerySnapshot>? _locationCurrentSubscription;

  List<PlaceHistory> _placeHistory = [];
  List<PlaceHistory> get placeHistory => _placeHistory;
  List<PlaceHistory> _currentlocation = [];
  List<PlaceHistory> get currentlocation => _currentlocation;

  List<CurrentCountry> _userCountryList = [];
  List<CurrentCountry> get userCountrylist => _userCountryList;

  Map<String, dynamic> _countyrecords = {};

  Map<String, dynamic> get countyrecords => _countyrecords;
  
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]);

    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
        log(' User logged in ..');

        // _placeHistorySubscription = FirebaseFirestore.instance
        //     .collection('placehistory')
        //     .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        //     .orderBy('timestamp', descending: true)
        //     .snapshots()
        //     .listen((snapshot) {
        //   _placeHistory = [];

        //   for (final document in snapshot.docs) {
        //     log(document.toString());
        //     Timestamp timestamp = document.data()['arrivaldate'];
        //     DateTime arrivalDate = timestamp.toDate();
        //     _placeHistory.add(
        //       PlaceHistory(
        //         userId: FirebaseAuth.instance.currentUser!.uid,
        //         name: document.data()['name'] as String,
        //         latitude: document.data()['latitude'] as double,
        //         longitude: document.data()['longitude'] as double,
        //         streetAddress: document.data()['streetAddress'] as String,
        //         city: document.data()['city'] as String,
        //         countryName: document.data()['countryName'] as String,
        //         countryCode: document.data()['countryCode'] as String,
        //         postal: document.data()['postal'] as String,
        //         region: document.data()['region'] as String,
        //         timezone: document.data()['timezone'] as String,
        //         elevation: document.data()['elevation'] as int,
        //         arrivaldate: arrivalDate,
        //       ),
        //     );
        //   }

        //   notifyListeners();
        // });
        StreamSubscription<QuerySnapshot> _userCountryListSubscription =
            FirebaseFirestore.instance
                .collection('currentuser')
                .doc(FirebaseAuth.instance.currentUser!.uid)
                .collection('country')
                .snapshots()
                .listen((snapshot) {
          _userCountryList = [];
          for (final document in snapshot.docs) {
            _countyrecords[document.id] = document.data()['countryName'];

            _userCountryList.add(CurrentCountry(
              countryCode: document.id,
              countryName: document.data()['countryName'] as String,
              userId: document.data()['userId'] as String,
            ));
          }
          notifyListeners();
        });

        _locationCurrentSubscription = FirebaseFirestore.instance
            //.collection('locationhistory')
            //.collection('currentuser')
            // .doc(FirebaseAuth.instance.currentUser!.uid)
            //  .collection('country')
            //  .doc('AU')
            //  .collection('region')
            //  .doc('New South Wales Australia')
            //.collection(
            //    '/currentuser/vptes0WpCDRY35Eoe2jbWAkFkAD2/country/AU/region/New South Wales Australia/placehistory')
            // .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
            //_firestore
            .collectionGroup('placehistory')
            .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
            .orderBy('timestamp', descending: true)
            .limit(1)
            .snapshots()
            .listen((snapshot) {
          _currentlocation = [];

          for (final document in snapshot.docs) {
            _currentlocation.add(
              PlaceHistory(
                userId: FirebaseAuth.instance.currentUser!.uid,
                name: document.data()['name'] as String,
                latitude: document.data()['latitude'] as double,
                longitude: document.data()['longitude'] as double,
                streetAddress: document.data()['streetAddress'] as String,
                city: document.data()['city'] as String,
                countryName: document.data()['countryName'] as String,
                countryCode: document.data()['countryCode'] as String,
                postal: document.data()['postal'] as String,
                region: document.data()['region'] as String,
                timezone: document.data()['timezone'] as String,
                elevation: document.data()['elevation'] as int,
              ),
            );
          }

          notifyListeners();
        });
      } else {
        _loggedIn = false;
        //    _placeHistory = [];
        //    _placeHistorySubscription?.cancel();
      }
      notifyListeners();
    });
  }
}
