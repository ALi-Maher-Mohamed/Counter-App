import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncreamentState());

  int teamApoints = 0;
  int teamBpoints = 0;

  void teamIncrement(String team, int buttnum) {
    if (team == "A") {
      teamApoints += buttnum;
      emit(CounterIncreamentState());
    } else {
      teamBpoints += buttnum;
      emit(CounterIncreamentState());
    }
  }

  void reset() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterIncreamentState());
  }
}
