import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templer/events/counter_events.dart';
import 'package:templer/models/counterClass.dart';

class CounterBloc2 extends Bloc<CounterEvent, MyCounterClass> {
  @override
  MyCounterClass get initialState => MyCounterClass();

  @override
  Stream<MyCounterClass> mapEventToState(CounterEvent event) async* {
    var newState = MyCounterClass()..count = state.count;

    if (event is IncrementEvent) {
      newState.add();
      yield newState;
    }
    if (event is DecrementEvent) {
      yield state;
    }
  }
}
