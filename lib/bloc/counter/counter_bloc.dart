import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/counter/counter_state.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super(const CounterState()) {
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(_decrement);
  }
    void _increment(IncrementEvent event, Emitter<CounterState> emit) {
      emit(state.copyWith(count: state.count + 1));
    }
    void _decrement(DecrementEvent event, Emitter<CounterState> emit) {
      emit(state.copyWith(count: state.count - 1));
    }

}