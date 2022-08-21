import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mallMapView/mallMapView.dart';
import 'package:location/location.dart';

const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
const LatLng DEST_LOCATION = LatLng(42.744421, -71.1698939);
const double CAMERA_ZOOM = 20;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;
void main() {
  runApp(const StartNavigating());
}

class StartNavigating extends StatefulWidget {
  const StartNavigating({super.key});

  @override
  State<StartNavigating> createState() => _StartNavigatingState();
}

class _StartNavigatingState extends State<StartNavigating> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;
  late LatLng currentLocation = LatLng(14.7649713, 120.9447974);
  late LatLng destinationLocation;
  bool userBadgeSelected = false;
  final Location location = Location();
  double rating = 30.0;

  StreamSubscription<LocationData>? _locationSub; // new
  Map<String, double>? _currentLocation;

  Set<Polyline> _polylines = Set<Polyline>();
  Set<Circle> circles = Set<Circle>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  @override
  void initState() {
    _initLocationService();
    _locationSub = location.onLocationChanged.listen((LocationData currentLoc) {
      debugPrint("${currentLoc.latitude} ${currentLoc.longitude}");
      currentLocation = LatLng(
          currentLoc.latitude!.toDouble(), currentLoc.longitude!.toDouble());
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFF7EB);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFFBAA1945), //change your color here
          ),
          backgroundColor: _color,
          title: const Text(
            'Start Navigating',
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Poppins Medium',
                color: Colors.black,
                letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Positioned.fill(
                child: GoogleMap(
              zoomControlsEnabled: false,
              myLocationEnabled: true,
              compassEnabled: false,
              tiltGesturesEnabled: false,
              polylines: _polylines,
              markers: _markers,
              mapType: MapType.normal,
              circles: circles,
              initialCameraPosition: CameraPosition(
                  zoom: CAMERA_ZOOM,
                  bearing: CAMERA_BEARING,
                  target: currentLocation),
            )),
          ],
        ));
  }

  Future _initLocationService() async {
    var location = Location();

    if (!await location.serviceEnabled()) {
      if (!await location.requestService()) {
        return;
      }
    }

    var permission = await location.hasPermission();
    if (permission == PermissionStatus.denied) {
      permission = await location.requestPermission();
      if (permission != PermissionStatus.granted) {
        return;
      }
    }

    var loc = await location.getLocation();

    debugPrint("${loc.latitude} ${loc.longitude}");
  }
}
