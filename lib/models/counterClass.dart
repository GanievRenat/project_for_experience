import 'package:equatable/equatable.dart';

// abstract class CounterClass extends Equatable {
//   void add();
// }

class MyCounterClass {
  //extends CounterClass {
  int count = 0;

  @override
  void add() {
    count++;
  }

  @override
  // TODO: implement props
  List<Object> get props => [];
}
