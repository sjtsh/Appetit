
import 'package:appetit/ProductDetail/Header.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {

  final Function _setIndex;
  final Function  _setLogged;
  MapScreen(this._setIndex, this._setLogged);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(27.672107, 85.428232),
    zoom:20,
    tilt: 50.0,
  );

  var _googleMapController;
  var _origin;
  List<Marker> _restaurants = [];
  Location _location =  Location();
  List<LatLng> _locations = [];
  List _locationsName = [];

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  // void _addMarker(LatLng pos){
  //   if(_destination==null) {
  //     setState(() {
  //       _destination = Marker(
  //         markerId: const MarkerId("destination"),
  //         infoWindow: const InfoWindow(title: "Destination"),
  //         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
  //         position: pos,
  //       );
  //       _destination = null;
  //     });
  //   }
  // }

  void _onMapCreated(GoogleMapController controller)
  {
    _googleMapController = controller;
    FirebaseFirestore.instance
        .collection('Restaurants')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        GeoPoint geoPoint = doc["Location"];
        _locations.add(LatLng(geoPoint.latitude, geoPoint.longitude));
        _locationsName.add(doc["Name"]);
      });
    });
    _location.onLocationChanged.listen((l) {
      _googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude as double, l.longitude as double),zoom: 15),
        ),
      );
      if(_origin == null){
        setState(() {
          _origin = Marker(
            markerId: const MarkerId("origin"),
            infoWindow: const InfoWindow(title: "Origin"),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRed),
            position: LatLng(l.latitude as double, l.longitude as double),
          );
          for(int i=0; i<_locations.length; i++){
            print('marker i added');
            _restaurants.add(Marker(
              markerId: MarkerId(_locationsName[i]),
              infoWindow: InfoWindow(title: "Appetit $i: " + _locationsName[i]),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueBlue),
              position: _locations[i],
            ));
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        SafeArea(
          child: Stack(
            children: [
              GoogleMap(
                  // myLocationButtonEnabled: true,
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: true,
                  initialCameraPosition: _initialCameraPosition,
                  onMapCreated: _onMapCreated,
                  markers: {
                    if (_origin != null) _origin,
                    ..._restaurants,
                  },
                  // onLongPress: _addMarker,
                  // myLocationEnabled: true,
              ),
              Header(widget._setIndex, widget._setLogged),
            ],
          ),
        );
  }
}
