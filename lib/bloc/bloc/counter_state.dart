import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({
    this.counter = 0,
  });
// copywith is equatable properties
//copyWith method create new instance of the state with updated properties
  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }

  @override
  List<Object?> get props => [counter];
}

// class IncrementState extends CounterState {}

// class DecrementState extends CounterState {}
