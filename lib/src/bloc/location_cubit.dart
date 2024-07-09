import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class LocationState {
  final List<LatLng> routePoints;
  final bool isTracking;
  final String error;

  LocationState({
    this.routePoints = const [],
    this.isTracking = false,
    this.error = '',
  });

  LocationState copyWith({
    List<LatLng>? routePoints,
    bool? isTracking,
    String? error,
  }) {
    return LocationState(
      routePoints: routePoints ?? this.routePoints,
      isTracking: isTracking ?? this.isTracking,
      error: error ?? this.error,
    );
  }
}

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationState());

  final GeolocatorPlatform _geolocator = GeolocatorPlatform.instance;
  StreamSubscription<Position>? _positionStreamSubscription;

  Future<void> startTracking() async {
    emit(state.copyWith(isTracking: false, error: ''));

    final hasPermission = await _handlePermission();
    if (!hasPermission) {
      emit(state.copyWith(error: 'Location permission denied'));
      return;
    }

    final isLocationServiceEnabled = await _geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      emit(state.copyWith(error: 'Location services are disabled'));
      return;
    }

    emit(state.copyWith(isTracking: true));
    _positionStreamSubscription = _geolocator.getPositionStream().listen(
      (position) {
        final newPoint = LatLng(position.latitude, position.longitude);
        final updatedPoints = List<LatLng>.from(state.routePoints)..add(newPoint);
        emit(state.copyWith(routePoints: updatedPoints));
      },
      onError: (error) {
        emit(state.copyWith(error: error.toString()));
      },
    );
  }

  Future<bool> _handlePermission() async {
    LocationPermission permission = await _geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  Future<void> stopTracking() async {
    await _positionStreamSubscription?.cancel();
    emit(state.copyWith(isTracking: false));
  }

  @override
  Future<void> close() {
    _positionStreamSubscription?.cancel();
    return super.close();
  }
}
