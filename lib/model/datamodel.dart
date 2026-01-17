class DataModel {
  // 1 create variables
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  String? image;

  // 2 create costructor
  DataModel({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.image,
  });

  // 3 mapping from json

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"],
        title: json['title'],
        description: json['description'],
        category: json["category"],
        price: json["price"],
        image: json["image"]);
  }

  // 4 mapping Tojson

  Map<String, dynamic> tojson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "category": category,
      "image": image,
      "price": price,
    };
  }
}
