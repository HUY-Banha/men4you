import 'package:flutter/material.dart';

@immutable
class CategoryView extends StatelessWidget {
  String title;
  CategoryView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20, vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 26.0, fontWeight: FontWeight.bold, letterSpacing: 2),
      ),
    );
  }
}
