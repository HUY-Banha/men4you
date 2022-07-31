class Product {
  String title;
  String imgUrl;
  double price;
  String color1, color2, color3;
  
  Product({
    required this.title,
    required this.imgUrl,
    required this.price,
    this.color1 = '',
    this.color2 = '',
    this.color3 = '',
  });
}
