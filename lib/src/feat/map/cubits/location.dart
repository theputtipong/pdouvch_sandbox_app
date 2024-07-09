// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationState {
  final List<LatLng> routePoints;
  final bool isTracking;
  final String error;
  final LatLng? currentLocation;
  final GoogleMapController? controller;

  LocationState(
      {this.routePoints = const [], this.isTracking = false, this.error = '', this.currentLocation, this.controller});

  LocationState copyWith({
    List<LatLng>? routePoints,
    bool? isTracking,
    String? error,
    LatLng? currentLocation,
    GoogleMapController? controller,
  }) {
    return LocationState(
      routePoints: routePoints ?? this.routePoints,
      isTracking: isTracking ?? this.isTracking,
      error: error ?? this.error,
      currentLocation: currentLocation ?? this.currentLocation,
      controller: controller ?? this.controller,
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
      log('Location permission denied');
      return;
    }

    final isLocationServiceEnabled = await _geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      emit(state.copyWith(error: 'Location services are disabled'));
      log('Location services are disabled');
      return;
    }

    emit(state.copyWith(isTracking: true));
    _positionStreamSubscription = _geolocator.getPositionStream().listen(
      (position) {
        final newPoint = LatLng(position.latitude, position.longitude);
        final updatedPoints = List<LatLng>.from(state.routePoints)..add(newPoint);
        emit(state.copyWith(routePoints: updatedPoints, currentLocation: newPoint));
        log('New point: $newPoint');
      },
      onError: (error) {
        emit(state.copyWith(error: error.toString()));
        log(error.toString());
      },
    );
  }

  Future<void> getCurrentLocation() async {
    try {
      final hasPermission = await _handlePermission();
      if (!hasPermission) {
        emit(state.copyWith(error: 'Location permission denied'));
        log('Location permission denied');
        return;
      }

      final position = await _geolocator.getCurrentPosition();
      final currentLocation = LatLng(position.latitude, position.longitude);

      emit(state.copyWith(currentLocation: currentLocation));
      setGoogleMapController();
      log('Current location: $currentLocation');
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
      log(e.toString());
    }
  }

  Future<bool> _handlePermission() async {
    LocationPermission permission = await _geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        log('Location permissions are denied');
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      log('Location permissions are permanently denied, we cannot request permissions.');
      return false;
    }

    log('Location permissions granted');
    return true;
  }

  Future<void> stopTracking() async {
    await _positionStreamSubscription?.cancel();
    emit(state.copyWith(isTracking: false));
    log('Location tracking stopped');
  }

  @override
  Future<void> close() {
    _positionStreamSubscription?.cancel();
    log('Location cubit closed');
    return super.close();
  }

  void setGoogleMapController({GoogleMapController? controller}) {
    if (controller != null && state.controller == null) {
      emit(state.copyWith(controller: controller));
    }
    if (state.controller != null && state.currentLocation != null) {
      state.controller
          ?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: state.currentLocation!, zoom: 14.0)));
    }
  }
}
