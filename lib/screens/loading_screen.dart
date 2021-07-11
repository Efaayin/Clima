import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

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
    Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=137054c7985eadcbbfb130a6da542569'));

    if (response.statusCode == 200) {
      String data = response.body;
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
