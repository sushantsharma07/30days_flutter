class catelogModel {
  static final items = [
    Item(
      id: 1,
      color: '#33505a',
      desp: 'Apple i phone 12th genration',
      image:
          'https://swaptou.mu/wp-content/uploads/2020/12/shared-iphone-12-pro-graphite-01-900x1200-1.jpg',
      name: 'i phone 12 pro',
      price: 999,
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desp;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desp,
      required this.price,
      required this.color,
      required this.image});
}
