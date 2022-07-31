import 'package:flutter/material.dart';
import 'package:men4you/widget/favorite_button.dart';

class CardItemProduct extends StatelessWidget {
  const CardItemProduct({
    Key? key,
    required this.imgUrl,
    required this.price,
    required this.titleProduct,
    this.color1 = '',
    this.color2 = '',
    this.color3 = '',
    this.onPressed,
  }) : super(key: key);

  final String imgUrl;
  final String price;
  final String titleProduct;
  final String? color1;
  final String? color2;
  final String? color3;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        margin: const EdgeInsets.all(4.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.34,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('US \$$price',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 10),
                            Text(titleProduct,
                                style: const TextStyle(fontSize: 18)),
                            const SizedBox(height: 10),
                            Text(
                                (color1!.isNotEmpty)
                                    ? '$color1 | $color2 | $color3'
                                    : '',
                                style: const TextStyle(color: Colors.grey))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                right: 10,
                top: 10,
                child: FavoriteButton(onPressed: onPressed)),
          ],
        ));
  }
}
