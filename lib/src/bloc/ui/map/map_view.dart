import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../cubits/cubits.dart';
import 'map_ctl.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    final mapController = RepositoryProvider.of<MapController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Map View'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: mapController.locationCubit),
          BlocProvider.value(value: mapController.timerCubit),
        ],
        child: BlocBuilder<LocationCubit, LocationState>(
          builder: (context, state) {
            final locationCubit = context.read<LocationCubit>();
            if (state.error.isNotEmpty) {
              return Center(
                child: Text('Error: ${state.error}'),
              );
            }
            return Stack(
              children: [
                GoogleMap(
                  onMapCreated: (GoogleMapController controller) {
                    locationCubit.setGoogleMapController(controller: controller);
                  },
                  initialCameraPosition: CameraPosition(
                    target: state.currentLocation ?? const LatLng(0, 0),
                    zoom: 14.0,
                  ),
                  polylines: {
                    Polyline(
                      polylineId: const PolylineId('route'),
                      points: state.routePoints,
                      color: Colors.blue,
                      width: 5,
                    ),
                  },
                  myLocationEnabled: true,
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: FloatingActionButton(
                    onPressed: () {
                      if (state.isTracking) {
                        locationCubit.stopTracking();
                      } else {
                        locationCubit.startTracking();
                      }
                    },
                    tooltip: state.isTracking ? 'Stop Tracking' : 'Start Tracking',
                    child: Icon(state.isTracking ? Icons.stop : Icons.play_arrow),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  left: 16,
                  child: BlocBuilder<TimerCubit, TimerState>(
                    builder: (context, timerState) {
                      return FloatingActionButton(
                        onPressed: () {
                          final timerCubit = context.read<TimerCubit>();
                          if (timerCubit.state.duration.inSeconds % 2 == 0) {
                            timerCubit.stopTimer();
                          } else {
                            timerCubit.startTimer();
                          }
                        },
                        tooltip: 'Time: ${timerState.duration.inSeconds} seconds',
                        child: const Icon(Icons.timer),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
