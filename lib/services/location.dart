import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      latitude = position.latitude;
      longitude = position.longitude;
      print('Latitude: $latitude and Longitude: $longitude');
    } catch (e) {
      print(e);
    }
  }
}


// var temperature = decodeddata['main']['temp'];
// var cityName = decodeddata['name'];
// var condition = decodeddata['weather'][0]['id'];
