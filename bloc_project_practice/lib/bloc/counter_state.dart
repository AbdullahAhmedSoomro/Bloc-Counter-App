part of 'counter_bloc.dart';

class CounterState {
  final int count;

  CounterState({required this.count});

  factory CounterState.initial() {
    return CounterState(count: 0);
  }

  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }
}
