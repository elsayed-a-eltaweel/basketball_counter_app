part of 'counter_cubit.dart';

sealed class CounterState {
  const CounterState();
}

final class CounterInitial extends CounterState {
  const CounterInitial();
}

final class CounterAIncrease extends CounterState {
  CounterAIncrease();
}

final class CounterBIncrease extends CounterState {
  CounterBIncrease();
}
