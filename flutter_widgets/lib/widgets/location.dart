import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? position;
  fetchPosition()async{
    bool serviceEnabled;
    LocationPermission permission;
   
   serviceEnabled = await Geolocator.isLocationServiceEnabled();
   if(!serviceEnabled){
    Fluttertoast.showToast(msg: 'Location Service is Disabled');
   }

permission = await Geolocator.checkPermission();
if(permission == LocationPermission.denied){
  permission =await Geolocator.requestPermission();
  if (permission == LocationPermission.denied) {
    Fluttertoast.showToast(msg: 'You have denied location permission');
    
  }
}
if(permission == LocationPermission.deniedForever){
  Fluttertoast.showToast(msg: 'You have denied permission forever');
}

Position currentPosition = await Geolocator.getCurrentPosition();

setState(() {
  position = currentPosition;
});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoLocation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(position == null?
              'Location' : position.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                fetchPosition();
                print(position);
              },
              child: const Text('Show Location'),
            ),
          ],
        ),
      ),
    );
  }
}
