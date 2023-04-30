part of 'count_bloc.dart';

@immutable
abstract class CountState extends Equatable {
  const CountState(this.value);
  final int value;
  @override
  List<Object> get props => [value];
}

class InitialState extends CountState {
  const InitialState(super.value);

  @override
  List<Object> get props => [];
}

class IncrementState extends CountState {
  final String incremento;
  const IncrementState(super.value, this.incremento);

  @override
  List<Object> get props => [value, incremento];
}

class DecrementState extends CountState {
  final String decremento;
  const DecrementState(super.value, this.decremento);

  @override
  List<Object> get props => [value, decremento];
}
