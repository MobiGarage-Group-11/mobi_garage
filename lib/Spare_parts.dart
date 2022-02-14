// ignore_for_file: file_names

class Product {
  final String name;
  final String urlImage;
  final int price;

  const Product({
    required this.name,
    required this.urlImage,
    required this.price,
  });

  static const List<Product> products = [
    Product(name: 'Battery', urlImage: 'asset/battery 2.jpg', price: 250000),
    Product(
        name: 'Auto-lek starter motor for generator',
        urlImage: 'asset/starter 4.jpg',
        price: 100000),
    Product(
        name: 'Automotive fluid\n(Super S Anti-Wear AW32 Hydraulic Oil)',
        urlImage: 'asset/automotive fluid.jpg',
        price: 750000),
    Product(
        name: 'Car bearing', urlImage: 'asset/car bearing.jpg', price: 200000),
    Product(name: 'Led lights', urlImage: 'asset/ext light.jpg', price: 200000),
    Product(
        name: 'Ac compressor',
        urlImage: 'asset/ac compressor.jpg',
        price: 2300000),
    Product(
        name: 'Graco car seats', urlImage: 'asset/seati.jpg', price: 480000),
    Product(
        name: 'Alternator', urlImage: 'asset/alternator.jpg', price: 120000),
    Product(
        name: 'Manual car geer shift',
        urlImage: 'asset/geer.webp',
        price: 340000),
    Product(name: 'Tyre', urlImage: 'asset/tyre.jpeg', price: 200000),
    Product(
        name: 'Brake rotator',
        urlImage: 'asset/brake rotators.jpg',
        price: 560000),
    Product(name: 'Engine 210', urlImage: 'asset/engine.png', price: 1500000),
    Product(
        name: 'Exhaust\n(system 101)',
        urlImage: 'asset/exhaust.jpg',
        price: 637000),
    Product(
        name: 'Black battery\n(12V, 32Ah, 250A)',
        urlImage: 'asset/battery.jpg',
        price: 399000),
    Product(name: 'Wheel', urlImage: 'asset/will.jpg', price: 223000),
    Product(
        name: 'Car Steering', urlImage: 'asset/steering.jpg', price: 250000),
    Product(
        name: 'Side Mirror', urlImage: 'asset/side mirror.webp', price: 409000),
    Product(
        name: 'Exterior lights',
        urlImage: 'asset/ext lights.jpg',
        price: 675000),
    Product(
        name: 'Automotive fluid\n(81STon5IgnL._AC_UL320)',
        urlImage: 'asset/fl.jpg',
        price: 200000),
  ];
}
