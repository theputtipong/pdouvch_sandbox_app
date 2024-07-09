import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class LocationState {
  final List<LatLng> routePoints;

  LocationState({this.routePoints = const []});
}

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationState());

  final GeolocatorPlatform _geolocator = GeolocatorPlatform.instance;

  void startTracking() {
    _geolocator.getPositionStream().listen((position) {
      final newPoint = LatLng(position.latitude, position.longitude);
      final updatedPoints = List<LatLng>.from(state.routePoints)..add(newPoint);
      emit(LocationState(routePoints: updatedPoints));
    });
  }
}
