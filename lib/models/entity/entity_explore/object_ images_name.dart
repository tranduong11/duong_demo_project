class ObjectImagesName {
  ObjectImagesName({
      this.images, 
      this.name, 
      this.color, 
      this.boder,});

  ObjectImagesName.fromJson(dynamic json) {
    images = json['images'];
    name = json['name'];
    color = json['color'];
    boder = json['boder'];
  }
  String? images;
  String? name;
  String? color;
  String? boder;
ObjectImagesName copyWith({  String? images,
  String? name,
  String? color,
  String? boder,
}) => ObjectImagesName(  images: images ?? this.images,
  name: name ?? this.name,
  color: color ?? this.color,
  boder: boder ?? this.boder,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['images'] = images;
    map['name'] = name;
    map['color'] = color;
    map['boder'] = boder;
    return map;
  }

}