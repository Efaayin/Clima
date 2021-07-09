import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

  Future getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/albums/1'));
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: getData,
          child: Text('Test'),
        ),
      ),
    );
  }
}
