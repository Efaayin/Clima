import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

Location location = Location();

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    location.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
