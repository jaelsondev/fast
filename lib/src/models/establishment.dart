class Establishment {
  String name;
  String contact;
  String logo;
  String type;
  String sellStart;
  String sellEnd;
  bool status;

  Establishment(
      {this.name,
      this.contact,
      this.logo,
      this.type,
      this.sellStart,
      this.sellEnd,
      this.status});

  Establishment.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contact = json['contact'];
    logo = json['logo'];
    type = json['type'];
    sellStart = json['sellStart'];
    sellEnd = json['sellEnd'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['contact'] = this.contact;
    data['logo'] = this.logo;
    data['type'] = this.type;
    data['sellStart'] = this.sellStart;
    data['sellEnd'] = this.sellEnd;
    data['status'] = this.status;
    return data;
  }
}