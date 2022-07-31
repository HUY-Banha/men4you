import 'package:men4you/presentations/home_screen/model/product_model.dart';

class ProductRepository {
  static List<Product> shirtlist() {
    return [
      Product(
          title: 'Shirt #1',
          imgUrl:
              'https://assets.ajio.com/medias/sys_master/root/h1d/h2e/15885260521502/dennislingo_premium_attire_blue_checked_slim_fit_shirt.jpg',
          price: 12.0,
          color1: 'blue',
          color2: 'black',
          color3: 'white'),
      Product(
        title: 'Shirt #2',
        imgUrl:
            'https://cdn.shopify.com/s/files/1/0752/6435/products/PortoBeige_1d7ebe25-6d3c-47e3-829e-998ce1238782.jpg?v=1631124714',
        price: 12.0,
      ),
    ];
  }

  static List<Product> featurelist() {
    return [
      Product(
          title: 'Shirt #1',
          imgUrl:
              'https://assets.ajio.com/medias/sys_master/root/h1d/h2e/15885260521502/dennislingo_premium_attire_blue_checked_slim_fit_shirt.jpg',
          price: 12.0,
          color1: 'blue',
          color2: 'black',
          color3: 'white'),
      Product(
        title: 'Shirt #2',
        imgUrl:
            'https://cdn.shopify.com/s/files/1/0752/6435/products/PortoBeige_1d7ebe25-6d3c-47e3-829e-998ce1238782.jpg?v=1631124714',
        price: 12.0,
      ),
      Product(
          title: 'T-Shirt #1',
          imgUrl:
              'https://www.differenta.com/media/produkty/82072/gap-grey-men-s-t-shirt_g-440775-08-A.jpg',
          price: 12.0,
          color1: 'blue',
          color2: 'black',
          color3: 'white'),
    ];
  }

  static List<Product> tshirtlist() {
    return [
      Product(
          title: 'T-Shirt #1',
          imgUrl:
              'https://www.differenta.com/media/produkty/82072/gap-grey-men-s-t-shirt_g-440775-08-A.jpg',
          price: 12.0,
          color1: 'blue',
          color2: 'black',
          color3: 'white'),
      Product(
        title: 'T-Shirt #2',
        imgUrl:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/white-tee-1623337322.jpg?crop=0.502xw:1.00xh;0.250xw,0&resize=640:*',
        price: 14.0,
      ),
    ];
  }

  static List<Product> pantlist() {
    return [
      Product(
          title: 'Pant #1',
          imgUrl:
              'https://5.imimg.com/data5/TF/IW/MY-17554435/men-casual-pant-500x500.jpg',
          price: 16.0,
          color1: 'blue',
          color2: 'black',
          color3: 'white'),
      Product(
        title: 'Pant #2',
        imgUrl:
            'https://5.imimg.com/data5/QD/AC/MY-24020479/men-pants-500x500.jpg',
        price: 18.0,
        color1: 'blue',
        color2: 'black',
      ),
    ];
  }

  static List<Product> shoelist() {
    return [
      Product(
          title: 'Shoe #1',
          imgUrl:
              'https://ae01.alicdn.com/kf/HTB16buSQFXXXXXLapXXq6xXFXXXc/New-Men-s-Flat-Canvas-Shoes-Breathable-White-Black-Casual-Shoes-Men-Fashion-Mens-Shoes-Slip.jpg_Q90.jpg_.webp',
          price: 12.0,
          color1: 'blue',
          color2: 'black',
          color3: 'white'),
      Product(
        title: 'Shoe #2',
        imgUrl:
            'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/10331501/2020/3/18/d4d07c60-88d9-43d9-aa78-9cc7712816321584508934272-US-Polo-Assn-Men-White-Colourblocked-Sneakers-84015845089331-1.jpg',
        price: 14.0,
      ),
    ];
  }
}
