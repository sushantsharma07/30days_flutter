import 'dart:convert';

class catelogModel {
  static List<Item> items = [
    // Item(
    // id: 1,
    // color: '#33505a',
    // desp: 'Apple i phone 12th genration',
    // image:
    //     'https://swaptou.mu/wp-content/uploads/2020/12/shared-iphone-12-pro-graphite-01-900x1200-1.jpg',
    // name: 'i phone 12 pro',
    // price: 999, )
  ];
}

class Item {
  final int id;
  final String name;
  final String desp;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desp,
    required this.price,
    required this.color,
    required this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desp,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desp: desp ?? this.desp,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'desp': desp});
    result.addAll({'price': price});
    result.addAll({'color': color});
    result.addAll({'image': image});

    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desp: map['desp'] ?? '',
      price: map['price'] ?? 0,
      color: map['color'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desp: $desp, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desp == desp &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desp.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
