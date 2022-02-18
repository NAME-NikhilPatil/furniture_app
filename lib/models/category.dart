class Catagory {
  final String id, title, image;
  final int numOfProducts;

  Catagory(
      {required this.id,
      required this.title,
      required this.image,
      required this.numOfProducts});
  //It creates catagory from Json
  factory Catagory.fromJson(Map<String, dynamic> json) {
    return Catagory(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        numOfProducts: json['numOfProducts']);
  }
}

//our demo catagory
Catagory catagory = Catagory(
    id: '1',
    title: 'Armchair',
    image: 'https://i.imgur.com/JqKDdxj.png',
    numOfProducts: 100);
