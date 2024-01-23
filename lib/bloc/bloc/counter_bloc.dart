import 'package:bloc/bloc.dart';
import 'package:practise_app/bloc/bloc/counter_event.dart';
import 'package:practise_app/bloc/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementEvent>((event, emit) {
      incrementEvent(event, emit);
    });

    on<DecrementEvent>(
      (event, emit) => decrementEvent(event, emit),
    );
  }

  void incrementEvent(IncrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  decrementEvent(DecrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
