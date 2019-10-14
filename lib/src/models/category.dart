import 'establishment.dart';

class Category {
  String name;
  String description;
  bool status;
  Establishment establishment;

  Category({this.name, this.description, this.status, this.establishment});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    status = json['status'];
    establishment = json['establishment'] != null
        ? new Establishment.fromJson(json['establishment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['status'] = this.status;
    if (this.establishment != null) {
      data['establishment'] = this.establishment.toJson();
    }
    return data;
  }
}