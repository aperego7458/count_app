import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'count_event.dart';
part 'count_state.dart';

class CounterBloc extends Bloc<CounterEvent, CountState> {
  CounterBloc() : super(const InitialState(0)) {
    on<IncrementEvent>(_onIncrementEvent);
    on<DecrementEvent>(_onDecrementEvent);
  }

  int count = 0;

  void _mapEventToState(CounterEvent event, CountState emit) {
    // if (event is IncrementEvent) {
    //   emit(state + 1);
    // } else if (event is DecrementEvent) {
    //   emit(state - 1);
    // }
  }

  void _onIncrementEvent(IncrementEvent event, Emitter<CountState> emit) {
    count++;
    emit(IncrementState(count, "Incremento"));
  }

  void _onDecrementEvent(DecrementEvent event, Emitter<CountState> emit) {
    count--;
    emit(IncrementState(count, "Decremento"));
  }
}
