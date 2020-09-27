import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wavedirect/global_widgets/animation/FadeAnimation.dart';

class OutageMap extends StatefulWidget {
  final secondaryColor;
  final font;
  final dividerColor;

  OutageMap({
    @required this.secondaryColor,
    @required this.font,
    @required this.dividerColor,
  });

  @override
  _OutageMapState createState() => _OutageMapState();
}

class _OutageMapState extends State<OutageMap> {
  Completer<GoogleMapController> _controller = Completer();

  // static const LatLng _center = const LatLng(42.2949797, -83.072922);
  LatLng _center = LatLng(42.231195, -82.5540652);

  final Set<Marker> _markers = {};
  final Set<Circle> _circles = {};

  void _goToMyLocation() {
    print('Going to my location!');
    setState(() {
      _center = LatLng(42.231195, -82.5540652);
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  void initState() {
    super.initState();

    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_0'),
        position: LatLng(42.284407, -82.973549),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_1'),
        position: LatLng(42.124728, -82.990361),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_2'),
        position: LatLng(42.264163, -82.709094),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_3'),
        position: LatLng(42.186232, -82.400458),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_4'),
        position: LatLng(42.279905, -82.218325),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_5'),
        position: LatLng(42.407972, -82.335988),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_6'),
        position: LatLng(42.055730, -82.555961),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_7'),
        position: LatLng(42.298651, -82.418053),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_8'),
        position: LatLng(42.278436, -81.999897),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_9'),
        position: LatLng(42.507319, -81.800469),
      ),
    );

    // Circles
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_0'),
        center: LatLng(42.284407, -82.973549),
        radius: 5 * 1000.0,
        fillColor: Colors.lightGreen.withOpacity(0.5),
        strokeColor: Colors.greenAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_1'),
        center: LatLng(42.124728, -82.990361),
        radius: 4 * 1000.0,
        fillColor: Colors.lightGreen.withOpacity(0.5),
        strokeColor: Colors.greenAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_2'),
        center: LatLng(42.264163, -82.709094),
        radius: 10 * 1000.0,
        // fillColor: Colors.lightGreen.withOpacity(0.5),
        // strokeColor: Colors.greenAccent,
        fillColor: (widget.secondaryColor).withOpacity(0.5),
        strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_3'),
        center: LatLng(42.186232, -82.400458),
        radius: 21 * 1000.0,
        fillColor: Colors.lightGreen.withOpacity(0.5),
        strokeColor: Colors.greenAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_4'),
        center: LatLng(42.279905, -82.218325),
        radius: 2 * 1000.0,
        fillColor: Colors.lightGreen.withOpacity(0.5),
        strokeColor: Colors.greenAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_5'),
        center: LatLng(42.407972, -82.335988),
        radius: 7 * 1000.0,
        // fillColor: Colors.lightGreen.withOpacity(0.5),
        // strokeColor: Colors.greenAccent,
        fillColor: (widget.secondaryColor).withOpacity(0.5),
        strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_6'),
        center: LatLng(42.055730, -82.555961),
        radius: 30 * 1000.0,
        fillColor: Colors.lightGreen.withOpacity(0.5),
        strokeColor: Colors.greenAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_7'),
        center: LatLng(42.298651, -82.418053),
        radius: 6 * 1000.0,
        fillColor: Colors.lightGreen.withOpacity(0.5),
        strokeColor: Colors.greenAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_8'),
        center: LatLng(42.278436, -81.999897),
        radius: 5 * 1000.0,
        // fillColor: Colors.lightGreen.withOpacity(0.5),
        // strokeColor: Colors.greenAccent,
        fillColor: (widget.secondaryColor).withOpacity(0.5),
        strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_9'),
        center: LatLng(42.507319, -81.800469),
        radius: 28 * 1000.0,
        fillColor: Colors.lightGreen.withOpacity(0.5),
        strokeColor: Colors.greenAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );

    // Current Location Circle
    _circles.add(
      Circle(
        circleId: CircleId('circle_id_me'),
        center: LatLng(42.231195, -82.5540652),
        radius: 100.0,
        fillColor: Colors.lightBlue.withOpacity(0.5),
        strokeColor: Colors.blueAccent,
        // fillColor: (widget.secondaryColor).withOpacity(0.5),
        // strokeColor: Colors.red,
        strokeWidth: 3,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeAnimation(
          1.0,
          Text('Outage Map'),
        ),
        backgroundColor: widget.secondaryColor,
      ),
      body: Stack(
        children: <Widget>[
          FadeAnimation(
            1.1,
            GoogleMap(
              onTap: (point) {
                print(point);
              },
              markers: _markers,
              circles: _circles,
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 15.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 16.0,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16.0),
                  // FloatingActionButton(
                  //   heroTag: "btn1",
                  //   onPressed: null,
                  //   materialTapTargetSize: MaterialTapTargetSize.padded,
                  //   backgroundColor: widget.secondaryColor,
                  //   child: const Icon(Icons.add_location, size: 36.0),
                  // ),
                  // SizedBox(height: 16.0),
                  FadeAnimation(
                    1.2,
                    FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () => _goToMyLocation(),
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.blue,
                      child: const Icon(
                        Icons.navigation,
                        size: 36.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              top: 16.0,
            ),
            child: FadeAnimation(
              1.2,
              RaisedButton(
                onPressed: () => {},
                child: Container(
                  width: 160.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Connection to ISP ',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: widget.font,
                          fontSize: 16.0,
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
