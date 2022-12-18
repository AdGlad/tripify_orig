import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:gtk_flutter/model/locationData.dart';
import 'package:location/location.dart';
import 'package:geocode/geocode.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import '../model/applicationState.dart';
import '../model/locationList.dart';
import '../src/widgets.dart';

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
              if (currentLocation != null)
                Text(
                    "Location: ${currentLocation?.latitude}, ${currentLocation?.longitude}"),
              if (currentLocation != null) Text("$address"),
              Text("$address"),
              MaterialButton(
                onPressed: () =>
                    _getCurrentLocation(context, latitude, longitude)
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

  Future<LocationData?> _getLocation() async {
    Location location = new Location();
    LocationData _locationData;

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    _locationData = await location.getLocation();

    return _locationData;
  }

  Future<String> _getAddress(double? lat, double? lang) async {
    if (lat == null || lang == null) return "";
    GeoCode geoCode = GeoCode();
    // await Future.delayed(const Duration(seconds: 5), () {});
    Address address =
        await geoCode.reverseGeocoding(latitude: lat, longitude: lang);

    // return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
    // ignore: unnecessary_statements
    //countryName = " ${address.countryName}";

    return " ${address.countryName}";
  }
}
