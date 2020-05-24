import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templer/events/counter_events.dart';
import 'package:templer/models/counterClass.dart';

class CounterBloc2 extends Bloc<CounterEvent, CounterClass> {
  MyCounterClass myCounterClass = MyCounterClass();

  @override
  CounterClass get initialState => myCounterClass;

  @override
  Stream<CounterClass> mapEventToState(CounterEvent event) async* {
    yield myCounterClass.add();
    if (event is IncrementEvent) {
      myCounterClass.add();
      yield myCounterClass;
    }
    if (event is DecrementEvent) {
      yield state;
    }
  }
}
