import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // String mapUrl = "test";
  // test(lat, lon) async {
  //   setState(() {
  //     mapUrl = "https://www.google.com/maps/search/?api=1&query=$lat,$lon";
  //   });
  //   // String url = "https://www.google.com/maps/search/?api=1&query=$lat,$lon";
  // }

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

      // test(currentPosition.latitude.toString(),
      //     currentPosition.longitude.toString());
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
            child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  getMyCurrentPosition();
                },
                child: Text("Get Current position")),
            // ElevatedButton(
            //     onPressed: () {
            //       launchUrl(Uri.parse(mapUrl));
            //     },
            //     child: Text("$mapUrl")),
            // Text(mapUrl)
          ],
        )),
      ),
    );
  }
}
