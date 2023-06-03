import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final controller = MapController(
    location: LatLng(35.68, 51.41),
    zoom: 6,

  );
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}