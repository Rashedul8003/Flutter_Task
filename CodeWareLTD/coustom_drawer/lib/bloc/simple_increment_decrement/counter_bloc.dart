import 'package:coustom_drawer/bloc/simple_increment_decrement/counter_event.dart';
import 'package:coustom_drawer/bloc/simple_increment_decrement/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInit()) {
    on<CounterIncrese>((event, emit) {
      counter = counter + 1;
      emit(CounterUpdate(counter));
    });
    on<CounterDecrese>((event, emit) {
      counter = counter - 1;
      emit(CounterUpdate(counter));
    });
  }
}
