import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 0;
  double longitude = 0;
  Future<void> getCurrentLocation() async {
    LocationSettings location = const LocationSettings(
      accuracy: LocationAccuracy.low,
    );
    try {
      Position position =
          await Geolocator.getCurrentPosition(locationSettings: location);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
