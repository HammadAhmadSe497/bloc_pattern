
import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object> get props => [];

}

class IncrementEvent extends CounterEvent {
  const IncrementEvent();
}
class DecrementEvent extends CounterEvent {
  const DecrementEvent();
}