class ProductEntity {
  ProductEntity({
    this.id,
    this.images,
    this.name,
    this.subName,
    this.price,
    this.description,
    this.mass,
    this.evaluate,
  });

  ProductEntity.fromJson(dynamic json) {
    id = json['id'];
    images = json['images'];
    name = json['name'];
    subName = json['sub_name'];
    price = json['price'];
    description = json['description'];
    mass = json['mass'];
    evaluate = json['evaluate'];
  }
  int? id;
  String? images;
  String? name;
  String? subName;
  double? price;
  String? description;
  int? mass;
  int? evaluate;
  ProductEntity copyWith({
    int? id,
    String? images,
    String? name,
    String? subName,
    double? price,
    String? description,
    int? mass,
    int? evaluate,
  }) =>
      ProductEntity(
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        subName: subName ?? this.subName,
        price: price ?? this.price,
        description: description ?? this.description,
        mass: mass ?? this.mass,
        evaluate: evaluate ?? this.evaluate,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['images'] = images;
    map['name'] = name;
    map['sub_name'] = subName;
    map['price'] = price;
    map['description'] = description;
    map['mass'] = mass;
    map['evaluate'] = evaluate;
    return map;
  }
}
