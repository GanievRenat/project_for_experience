import 'product_flags.dart';
import 'product_prices.dart';

class ProductItem {
  ProductItem({this.id, this.urlLink, this.name, this.description, this.isLike, this.flags, this.price});

  int id;
  String urlLink;
  String name;
  String description;
  bool isLike;
  List<ProductFlags> flags;
  Price price;
}
