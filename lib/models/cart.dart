class CartBloc {
  CartBloc();

  Map<int, int> _cart = {};
  Map<int, int> get cart => _cart;

  void addToCart(int index) {
    if (_cart.containsKey(index)) {
      _cart[index] += 1;
    } else {
      _cart[index] = 1;
    }
  }

  void removeToCart(int index) {
    _cart[index] -= 1;
  }

  void clear(index) {
    if (_cart.containsKey(index)) {
      _cart.remove(index);
    }
  }
}
