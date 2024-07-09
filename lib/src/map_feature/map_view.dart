import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../bloc/location_cubit.dart';
import '../bloc/timer_cubit.dart';
import 'map_controller.dart';

class MapView extends StatelessWidget {
  static const routeName = '/map';

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
            return Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: state.routePoints.isNotEmpty ? state.routePoints.last : const LatLng(0, 0),
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
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: BlocBuilder<TimerCubit, TimerState>(
                    builder: (context, timerState) {
                      return FloatingActionButton(
                        onPressed: () {
                          final timerCubit = context.read<TimerCubit>();
                          timerCubit.state.duration.inSeconds % 2 == 0
                              ? timerCubit.stopTimer()
                              : timerCubit.startTimer();
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
