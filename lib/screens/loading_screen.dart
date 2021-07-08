import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
      forceAndroidLocationManager: true,
    );
    print(position);
  }

  @override
  void initState() {
    super.initState();
    // getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: getLocation,
          child: Text(
            'Get Weather',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
