import 'dart:math';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jerms_app_hackathon/bottomNavBar/bottomNavBar.dart';
import 'package:location/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/main.dart';

const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
const LatLng DEST_LOCATION = LatLng(42.744421, -71.1698939);
const double CAMERA_ZOOM = 20;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
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

  Set<Polyline> _polylines = Set<Polyline>();
  Set<Circle> circles = Set<Circle>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _setSliderAndRadius({required double newVal}) {
    setState(() {
      rating = newVal;
      circles.clear();
      circles.add(Circle(
          circleId: CircleId("nya"),
          center: LatLng(14.7649713, 120.9447974),
          fillColor: Color.fromARGB(255, 198, 229, 255),
          radius: newVal,
          strokeColor: Color.fromARGB(255, 69, 170, 252),
          strokeWidth: 1));
    });
  }

  @override
  void initState() {
    _initLocationService();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFFFFF);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFFBAA1945), //change your color here
          ),
          backgroundColor: _color,
          title: const Text(
            'Set Location',
            style: TextStyle(
                color: Color(0xFFB322E2E),
                fontFamily: 'Poppins Semi Bold',
                fontSize: 16),
          ),
          centerTitle: true,
        ),
        body: Builder(builder: (context) {
          return Stack(
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
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xFFBFFF7EB)),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          textAlign: TextAlign.left,
                          decoration: new InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: const EdgeInsets.all(10),
                            suffixIcon: new Icon(
                              Icons.search,
                              color: Color(0xFFBC4C4C4),
                            ),
                            hintText: "Search here..",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontSize: 14,
                                color: Color(0xFFB707070)),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: const BorderSide(
                                color: Color(0xFFBC4C4C4),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFBC4C4C4)),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Radius",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, max(0, 0)),
                              width: 287.0,
                              child: Slider(
                                value: rating,
                                onChanged: (newRating) {
                                  setState(() {
                                    rating = newRating;
                                    circles.clear();
                                    circles.add(Circle(
                                        circleId: CircleId("nya"),
                                        center: LatLng(14.7649713, 120.9447974),
                                        fillColor:
                                            Color.fromARGB(255, 198, 229, 255),
                                        radius: newRating,
                                        strokeColor:
                                            Color.fromARGB(255, 69, 170, 252),
                                        strokeWidth: 1));
                                  });
                                },
                                thumbColor: Colors.green,
                                activeColor: Colors.green,
                                min: 0,
                                max: 100,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              Positioned(
                bottom: 40,
                left: 17,
                right: 17,
                child: Container(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBar()));
                      // Navigate back to first route when tapped.
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFBAA1945),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text("NEXT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins Medium',
                                letterSpacing: 2)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
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
