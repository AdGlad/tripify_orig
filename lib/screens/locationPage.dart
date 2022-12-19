import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:gtk_flutter/model/locationData.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import '../model/applicationState.dart';
//import '../model/locationData.dart';
import '../model/locationList.dart';
import '../src/widgets.dart';
import 'package:gtk_flutter/controller/geoCode.dart';
import 'package:location/location.dart';

class GetUserLocation extends StatefulWidget {
  const GetUserLocation({
    super.key,
    required this.currentaddress,
    required this.addMessage,
    required this.messages,
  });
  final FutureOr<void> Function(String message) addMessage;
  final List<LocationListMessage> messages;
  final String currentaddress;

  //GetUserLocation({Key? key, required this.title}) : super(key: key);
  //final String title;

  @override
  //_GetUserLocationState createState() => _GetUserLocationState();
  State<GetUserLocation> createState() => _GetUserLocationState();
}

class _GetUserLocationState extends State<GetUserLocation> {
  LocationData? currentLocation;
  String latitude = "latitude";
  String longitude = "longitude";
  String address = "England";

  //void _setCountry(BuildContext context, latitude, longitude) {
  //  Provider.of<ApplicationState>(context, listen: false)
  //      .setCountry(latitude, longitude);
  //}

  void _getCurrentLocation(BuildContext context, latitude, longitude) {
    Provider.of<ApplicationState>(context, listen: false)
        .getCurrentLocation(latitude, longitude);
  }

  Future<void> _setAddress(BuildContext context, latitude, longitude) async {
    Provider.of<ApplicationState>(context, listen: false)
        .setAddress(latitude, longitude);
  }

  @override
  Widget build(BuildContext context) {
    var address = Provider.of<ApplicationState>(context).getCountry;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("$address"),
              MaterialButton(
                onPressed: () {
                  getLocation().then((value) async {
                    LocationData? location = value;
                    //_getCurrentLocation(
                    //    context, location?.latitude, location?.longitude);
                    await _setAddress(
                        context, location?.latitude, location?.longitude);
                    widget.addMessage(address);
                  });
                  //_getCurrentLocation(context, latitude, longitude);
                  //await getLocation().then((currentLocation) {
                  //  //LocationData? location = currentLocation;
                  //  _getCurrentLocation(context, currentLocation?.latitude,
                  //      currentLocation?.longitude);
                  //});
                }
                //_getCountry(context);
                ,
                //{
                //  setState(() {
                //    // currentLocation = "Seychelles";
                //    address = "Glacis";
                //  });
                //async {
                //  await _getLocation().then((value) {
                //    LocationData? location = value;
                //    _getAddress(location?.latitude, location?.longitude)
                //        .then((value) {
                //      setState(() {
                //        currentLocation = location;
                //        address = value;
                //        widget.addMessage(value);
                //      });
                //           });
                //  });
                // () async {
                //   await widget.addMessage(address);
                // };
                //},
                color: Colors.purple,
                child: Text(
                  "Get Location",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
