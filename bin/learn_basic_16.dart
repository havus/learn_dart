class Product {
  String? id;
  String? name;
  int?    _quantity;

  int? _getQuantity() {
    return this._quantity;
  }

  String toString() {
    return "Product {id: $id, name: $name, quantity: $_quantity}";
  }
}

void main() {
  Product shirt = Product();
  shirt.name = '3 seconds';
  print("$shirt");
}
