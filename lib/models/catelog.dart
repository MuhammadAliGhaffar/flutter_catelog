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
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        description: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}
