import 'category.dart';
import 'establishment.dart';

class Product {
  String name;
  double value;
  String description;
  String image;
  bool status;
  Establishment establishment;
  Category category;

  Product(
      {this.name,
      this.value,
      this.description,
      this.image,
      this.status,
      this.establishment,
      this.category});

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    description = json['description'];
    image = json['image'];
    status = json['status'];
    establishment = json['establishment'] != null
        ? new Establishment.fromJson(json['establishment'])
        : null;
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['value'] = this.value;
    data['description'] = this.description;
    data['image'] = this.image;
    data['status'] = this.status;
    if (this.establishment != null) {
      data['establishment'] = this.establishment.toJson();
    }
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    return data;
  }
}
