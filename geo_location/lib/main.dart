import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void getMyCurrentPosition() async {
//permission

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("permission not given");
      LocationPermission asked = await Geolocator.requestPermission();
      print("asked" + asked.toString());
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      print("latitude ${currentPosition.latitude.toString()}");
      print("longitude ${currentPosition.longitude.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                getMyCurrentPosition();
              },
              child: Text("Get Current position")),
        ),
      ),
    );
  }
}
