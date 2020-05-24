import 'package:equatable/equatable.dart';

abstract class CounterClass extends Equatable {}

class MyCounterClass extends CounterClass {
  int _count = 0;
  int get count => _count;

  add() {
    _count++;
  }

  @override
  // TODO: implement props
  List<Object> get props => [];
}
