import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerState {
  final Duration duration;

  TimerState({this.duration = Duration.zero});
}

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerState());

  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(TimerState(duration: Duration(seconds: state.duration.inSeconds + 1)));
    });
  }

  void stopTimer() {
    _timer?.cancel();
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
