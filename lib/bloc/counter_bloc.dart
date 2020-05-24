import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templer/events/counter_events.dart';
import 'package:templer/models/cart.dart';

class CounterBloc extends Bloc<CounterEvent, CartBloc> {
  @override
  CartBloc get initialState => CartBloc();

  @override
  Stream<CartBloc> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      state.addToCart(event.index);
      yield state;
    }
    if (event is DecrementEvent) {
      state.removeToCart(event.index);
      yield state;
    }
  }
}
