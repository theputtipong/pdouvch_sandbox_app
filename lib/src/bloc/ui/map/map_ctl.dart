import '../../cubits/location.dart';
import '../../cubits/timer.dart';

class MapController {
  final LocationCubit locationCubit;
  final TimerCubit timerCubit;

  MapController()
      : locationCubit = LocationCubit(),
        timerCubit = TimerCubit() {
    locationCubit.getCurrentLocation();
  }

  void dispose() {
    locationCubit.close();
    timerCubit.close();
  }
}
