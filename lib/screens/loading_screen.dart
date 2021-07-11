import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  Future<void> getData() async {
    http.Response response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=137054c7985eadcbbfb130a6da542569'));

    if (response.statusCode == 200) {
      String data = response.body;

      var decodeddata = jsonDecode(data);

      var temperature = decodeddata['main']['temp'];
      print(temperature);

      var cityName = decodeddata['name'];
      print(cityName);

      var condition = decodeddata['weather'][0]['id'];
      print(condition);
    } else {
      print(response.statusCode);
    }
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
