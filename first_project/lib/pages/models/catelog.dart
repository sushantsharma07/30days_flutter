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

final products = [
  Item(
    id: 1,
    color: '#33505a',
    desp: 'Apple i phone 12th genration',
    image:
        'bWFzdGVyfGltYWdlc3wyODIyODd8aW1hZ2UvanBlZ3xpbWFnZXMvaGE4L2hlZC85NjM3MjYwMDk5NjE0LmpwZ3w5YjU5NjhkMjM1NjU5NzBlMDI1NGM3MDY1MGYwYzBhODVkZDcyODc5N2Q2ODU1ZGM1OGRiNTU5MTc1NDcxOGNm',
    name: 'i phone 12 pro',
    price: 999,
  )
];
