import 'dart:async';
import 'dart:math' hide log;
import 'dart:developer';
import 'package:cloud_firestore_platform_interface/src/set_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gtk_flutter/model/location.dart';
import 'package:gtk_flutter/screens/activecountries.dart';
import 'package:gtk_flutter/screens/activecountriespage.dart';
import 'package:gtk_flutter/screens/mappage.dart';
import 'package:gtk_flutter/src/geoCode.dart';
import 'package:gtk_flutter/src/widgets.dart';
import 'package:location/location.dart';
import 'package:intl/intl.dart';
import 'package:confetti/confetti.dart';

import '../model/placehistory.dart';
import '../screens/countrylistpage.dart';
import '../screens/splashscreen.dart';
import 'confetti.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

//import 'package:mapbox_api/mapbox_api.dart';

//pk.eyJ1IjoidHJpcGlmeSIsImEiOiJjbGRmaWdkcHgwaGJpM25wZTh0eDAwN2JoIn0.H_QiLx6jgdQXVX4OqzKCVw

class Location extends StatefulWidget {
  Location(
      {required this.currentlocation,
      required this.locations,
      required this.usercountrylist,
      required this.countryrecords,
      // required this.addLocation,
      super.key});

  List<PlaceHistory> locations;
  List<PlaceHistory> currentlocation;
  List<CurrentCountry> usercountrylist;
  Map<String, dynamic> countryrecords;

  String _currentlocation = "France";

  // String currentlocation;

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late ConfettiController _controllerConfetti;
  bool isPlay = false;

  final _controller = TextEditingController();

  LocationHistory locationCurrent = LocationHistory();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      initController();
    });
  }

  void initController() {
    _controllerConfetti =
        ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    // dispose the controller
    _controllerConfetti.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Center(
          //SafeArea(
          // child: Stack(
          child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _controllerConfetti,
              blastDirectionality: BlastDirectionality.explosive,
              createParticlePath: drawStar,
              blastDirection: -pi / 2,
              maxBlastForce: 30,
              minBlastForce: 10,
              emissionFrequency: 0.03,
              numberOfParticles: 50,
              gravity: 0.1,
            ),
          ),
          widget.currentlocation.isNotEmpty
              ? Text(widget.currentlocation.first.countryName!)
              : Text("No Location"),
          // IconButton(
          //     onPressed: () => {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => Mapbox(
          //                       //usercountrylist: widget.usercountrylist,
          //                       )))
          //           //builder: (context) => SupportedCountriesMap()))
          //           //builder: (context) => ActiveCountryPage()))
          //         },

          //     Mapbox

          //     //_getCountryAndRegionCode,

          //     //     onPressed: () => {SplashScreen()},
          //     iconSize: 80,
          //     icon: const Icon(Icons.mail)),
          //     SizedBox(height: 20),
          //     Text(_countryCode),
          //     SizedBox(height: 20),
          //     Text(_regionCode),
          IconButton(
              onPressed: () => {fetchRegionCode()},
              //     onPressed: () => {SplashScreen()},
              iconSize: 80,
              icon: const Icon(Icons.waves)),
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserCountryPage(
                                //usercountrylist: widget.usercountrylist,
                                )))
                    //builder: (context) => SupportedCountriesMap()))
                    //builder: (context) => ActiveCountryPage()))
                  },
              //     onPressed: () => {SplashScreen()},
              iconSize: 80,
              icon: const Icon(Icons.access_alarm)),
          IconButton(
            onPressed: () {
              getLocation().then((value) async {
                LocationData? loc = value;
                String _userId = FirebaseAuth.instance.currentUser!.uid;
                CurrentUser currentUser = CurrentUser(
                    id: FirebaseAuth.instance.currentUser!.uid,
                    userId: FirebaseAuth.instance.currentUser!.uid,
                    email: FirebaseAuth.instance.currentUser!.email,
                    displayname: FirebaseAuth.instance.currentUser!.email);

                FirestoreService firestoreService = FirestoreService();

                Future<String> _messageCurrentUser =
                    firestoreService.setCurrentUser(currentUser);
                CurrentCountryCollectionReference countyRef =
                    currentuserRef.doc(currentUser.userId).country;
                if (loc.latitude != null && loc.longitude != null) {
                  await getAddress(loc.latitude!, loc.longitude!).then((value) {
                    log('Getting location');
                    if (widget.currentlocation.length != 0) {
                      widget._currentlocation =
                          widget.currentlocation.first.countryName!;
                      log('Set current Location');
                      log(widget._currentlocation);
                    } else {
                      widget._currentlocation = 'FirstLocation';
                      log('First Location');
                    }
                    //log('Current location widget.currentlocation.first.countryName!);
                    if (value.countryName == widget._currentlocation) {
                      log('Current location unchanged');
                    } else {
                      log('Current location changed');
                      _controllerConfetti.play();
                    }

                    CurrentCountry country = CurrentCountry(
                        countryCode: value.countryCode!,
                        countryName: value.countryName!,
                        userId: _userId);
                    Future<String> _messageCountry =
                        firestoreService.setCountry(countyRef, country);
                    Region region = Region(
                        region: value.region!,
                        countryCode: value.countryCode!,
                        userId: _userId);
                    RegionCollectionReference regionRef =
                        countyRef.doc(country.countryCode).region;
                    Future<String> _messageRegion =
                        firestoreService.setRegion(regionRef, region);
                    PlaceHistory placeCurrent = PlaceHistory(
                        userId: _userId,
                        name: value.countryName,
                        location: value.countryName,
                        latitude: loc.latitude,
                        longitude: loc.longitude,
                        streetAddress: value.streetAddress,
                        city: value.city,
                        countryName: value.countryName,
                        countryCode: value.countryCode,
                        postal: value.postal,
                        region: value.region,
                        timezone: value.timezone,
                        elevation: value.elevation!.toInt(),
                        timestamp: DateTime.now().millisecondsSinceEpoch,
                        arrivaldate: DateTime.now());
                    PlaceHistoryCollectionReference placehistoryRef =
                        regionRef.doc(region.region).placehistory;
                    Future<String> _messagePlaceHistory = firestoreService
                        .addPlaceHistory(placehistoryRef, placeCurrent);
                    //else {
                    //  log('Current location changed');
                    _controller.text = value.countryName!;
                  });
                }
              });
            },
            iconSize: 80,
            icon: const Icon(Icons.travel_explore),
          ),
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
//                        MaterialPageRoute(builder: (context) => Mappage()))
                        MaterialPageRoute(
                          builder: (context) => ActiveCountryPage(
                              usercountrylist: widget.usercountrylist,
                              countryrecords: widget.countryrecords),
                        ))
                  },
              //     onPressed: () => {SplashScreen()},
              iconSize: 80,
              icon: const Icon(Icons.map)),
        ],
      )),
    ]);
  }
}

String fetchRegionCode() {
  // var client = http.Client();
  // Uri contacts_url =
  //     'https://api.mapbox.com/geocoding/v5/mapbox.places/148.64536374318646,-33.027220457663375.json?country=au&limit=1&types=place%2Cpostcode%2Caddress%2Cregion%2Cneighborhood&access_token=pk.eyJ1IjoidHJpcGlmeSIsImEiOiJjbGRmaWdkcHgwaGJpM25wZTh0eDAwN2JoIn0.H_QiLx6jgdQXVX4OqzKCVw'
  //         as Uri;
  // String basicAuth = 'Basic mykeyexampele';
  // var response = client.get(contacts_url, headers: <String, String>{'authorization': basicAuth});
  // var jsonString = jsonDecode(response.);
  // print(response.statusCode);
  // print(jsonString);
  //return jsonString;
  return 'Hello';
  // http.Response regioncode;

  // regioncode = http.get(Uri.parse(
  //         'https://api.mapbox.com/geocoding/v5/mapbox.places/148.64536374318646,-33.027220457663375.json?country=au&limit=1&types=place%2Cpostcode%2Caddress%2Cregion%2Cneighborhood&access_token=pk.eyJ1IjoidHJpcGlmeSIsImEiOiJjbGRmaWdkcHgwaGJpM25wZTh0eDAwN2JoIn0.H_QiLx6jgdQXVX4OqzKCVw'))
  //     as http.Response;
  // ;

  // var jsonString = jsonDecode(regioncode.body);
  // print(jsonString);
  // return jsonString;
}
