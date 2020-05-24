abstract class CounterEvent {
  int index;
}

class IncrementEvent extends CounterEvent {
  IncrementEvent({int index}) {
    super.index = index;
  }
}

class DecrementEvent extends CounterEvent {
  DecrementEvent({int index}) {
    super.index = index;
  }
}
