import '../bloc/location_cubit.dart';
import '../bloc/timer_cubit.dart';

class MapController {
  final LocationCubit locationCubit;
  final TimerCubit timerCubit;

  MapController()
      : locationCubit = LocationCubit(),
        timerCubit = TimerCubit();

  void dispose() {
    locationCubit.close();
    timerCubit.close();
  }
}
