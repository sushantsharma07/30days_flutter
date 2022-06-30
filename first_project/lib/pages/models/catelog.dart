class Item {
  final String id;
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

final products = [
  Item(
    id: 'codepur001',
    color: '#33505a',
    desp: 'Apple i phone 12th genration',
    image: '',
    name: 'i phone 12 pro',
    price: 999,
  )
];
