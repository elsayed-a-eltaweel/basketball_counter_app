import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrease({required String team, required int value}) {
    if (team == 'A') {
      teamAPoints += value;
      emit(CounterAIncrease());
    } else {
      teamBPoints += value;
      emit(CounterBIncrease());
    }
  }

  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterInitial());
  }
}
