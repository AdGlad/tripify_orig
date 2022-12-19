import 'package:location/location.dart';
import 'package:geocode/geocode.dart';
//import 'package:gtk_flutter/model/locationData.dart'

import 'package:location/location.dart';

Future<LocationData?> getLocation() async {
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
  await Future.delayed(const Duration(seconds: 2), () {});

  _locationData = await location.getLocation();

  return _locationData;
}

Future<String> _getAddress(double? lat, double? lang) async {
  if (lat == null || lang == null) return "";
  print("Api Cal 1");
  GeoCode geoCode = GeoCode(apiKey: '982721843957054861260x35372');
  print("Api Cal 2");

  Address address =
      await geoCode.reverseGeocoding(latitude: lat, longitude: lang);
  print("Api Cal 3");

  // return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
  // ignore: unnecessary_statements
  //countryName = " ${address.countryName}";

  return " ${address.countryName}";
}
