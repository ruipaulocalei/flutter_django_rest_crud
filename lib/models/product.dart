class Product {
  int countInStock;
  String description;
  int id;
  String name;
  String price;

  Product({
      required this.countInStock,
      required this.description,
      required this.id,
      required this.name,
      required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      countInStock: json['countInStock'],
      description: json['description'],
      id: json['id'],
      name: json['name'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countInStock'] = this.countInStock;
    data['description'] = this.description;
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}
