part of 'counter_cubit.dart';

sealed class CounterState {
  const CounterState();
}

final class CounterInitial extends CounterState {}

final class CounterAIncrease extends CounterState {}

final class CounterBIncrease extends CounterState {}
