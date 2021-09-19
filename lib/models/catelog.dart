class Item {
  final String? name, description, color, imageUrl;
  final num? price;
  final int? id;

  Item(
      {this.id,
      this.name,
      this.description,
      this.color,
      this.imageUrl,
      this.price});

  /// Constructor for decode
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      description: map['desc'],
      price: map['price'],
      color: map['color'],
      imageUrl: map['image'],
    );
  }

  /// Constructor for encode
  toMap() => {
        "id": id,
        "name": name,
        "desc": description,
        "price": price,
        "color": color,
        "image": imageUrl,
      };
}

class CatalogModel {
  static List<Item> items=[];
}
