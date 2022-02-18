

class Product {
  final int price;
  final String id, title, category, image, subTitle, description;

  Product(
      {required this.price,
      required this.id,
      required this.title,
      required this.category,
      required this.image,
      required this.subTitle,
      required this.description});

  //It create an Catagory from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        price: json['price'],
        id: json['price'],
        title: json['price'],
        category: json['price'],
        image: json['price'],
        subTitle: json['price'],
        description: json['price']);
  }
}

//Our Demo Product
Product product = Product(
    price: 1600,
    id: '1',
    title: 'Wood Frame',
    category: 'Chair',
    image: 'https://i.imgur.com/sI4GvE6.png',
    subTitle: 'Tieton Armchair',
    description: description);
String description =
    'This armchair is an elegant and functional piece of funiture.It suitable for family';
