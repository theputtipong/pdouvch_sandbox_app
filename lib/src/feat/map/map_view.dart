import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'cubits/cubits.dart';
import 'map_ctl.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    final mapController = RepositoryProvider.of<MapController>(context);

    return Scaffold(
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
                  onMapCreated: (GoogleMapController controller) =>
                      locationCubit.setGoogleMapController(controller: controller),
                  initialCameraPosition:
                      CameraPosition(target: state.currentLocation ?? const LatLng(0, 0), zoom: 14.0),
                  myLocationEnabled: false,
                  myLocationButtonEnabled: false,
                  // markers: <Marker>[
                  //   Marker(
                  //     markerId: const MarkerId('current'),
                  //     position: state.currentLocation ?? const LatLng(0, 0),
                  //   ),
                  // ].toSet(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<bool> downloadFile({
    required String urlDownload,
    required String fileName,
  }) async {
    bool check = await _checkPermission();
    if (!check) return false;
    var dir = await getApplicationDocumentsDirectory();
    String savePath = "${dir.path}/$fileName";
    try {
      var request = await http.Client().get(Uri.parse(urlDownload));
      var bytes = request.bodyBytes;
      File file = File(savePath);
      await file.writeAsBytes(bytes);

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> _checkPermission() async {
    if (Platform.isAndroid || Platform.isIOS) {
      var status = await Permission.storage.status;
      if (status.isGranted) {
        return true;
      } else if (status.isPermanentlyDenied) {
        bool permission = await openAppSettings();
        return permission;
      } else {
        bool permission = await Permission.storage.request() == PermissionStatus.granted;
        return permission;
      }
    }
    return true;
  }
}
