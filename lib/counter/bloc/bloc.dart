import 'package:counter_bloc/counter/bloc/event.dart';
import 'package:counter_bloc/counter/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  static CounterBloc get(context) => BlocProvider.of(context);

  int count = 0;
  CounterBloc() : super(CounterIntialState()) {
    on<IncrementEvent>((event, emit) {
      emit(CounterSuccessState(c: count++));
    });

    on<DecrementEvent>((event, emit) {
        emit(CounterSuccessState(c: count--));
    });
  }
}
