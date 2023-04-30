import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'count_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>(_mapEventToState);
    on<DecrementEvent>(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event, Emitter<int> emit) {
    if (event is IncrementEvent) {
      emit(state + 1);
    } else if (event is DecrementEvent) {
      emit(state - 1);
    }
  }
}
