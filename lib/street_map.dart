import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';


class Streetmap extends StatefulWidget {
  const Streetmap({super.key});

  @override
  State<Streetmap> createState() => _StreetmapState();
}

//Map centers initially at entered location (after GeoPoint(Lat, Lon))
//To pinch/zoom: hold ctrl
//"updateAcquireFence: Did not find frame" error appears to be a bug in the emulator and may be ignored.
class _StreetmapState extends State<Streetmap> {
  //int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Streetmap'),
      ),

      body: OSMFlutter( 
        controller:MapController(
          initPosition: GeoPoint(latitude: 50.86146, longitude: 4.6763225),
        ),
        
        osmOption: OSMOption(       
            zoomOption: const ZoomOption(
                  initZoom: 8,
                  minZoomLevel: 3,
                  maxZoomLevel: 19,
                  stepZoom: 1.0,
            ),
            userLocationMarker: UserLocationMaker(
                personMarker: const MarkerIcon(
                    icon: Icon(
                        Icons.location_history_rounded,
                        color: Colors.red,
                        size: 48,
                    ),
                ),
                directionArrowMarker: const MarkerIcon(
                    icon: Icon(
                        Icons.double_arrow,
                        size: 48,
                    ),
                ),
            ),
            roadConfiguration: const RoadOption(
                    roadColor: Colors.yellowAccent,
            ),
            markerOption: MarkerOption(
                defaultMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.person_pin_circle,
                      color: Colors.blue,
                      size: 56,
                    ),
                )
            ),
        )
    ));
      
  }
}