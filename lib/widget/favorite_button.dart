import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 40,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        padding: const EdgeInsets.all(0),
        clipBehavior: Clip.hardEdge,
        onPressed: onPressed,
        color: Colors.black,
        child: const Icon(
          Icons.favorite_border_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
