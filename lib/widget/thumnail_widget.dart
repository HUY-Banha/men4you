
import 'package:flutter/material.dart';
import 'package:men4you/data/repositories/home_repository.dart';

class ThumnailWidget extends StatelessWidget {
  const ThumnailWidget({
    Key? key,
    required this.thumnailList,
    required this.controller,
    required ValueNotifier<int> currentPageNotifier,
  })  : _currentPageNotifier = currentPageNotifier,
        super(key: key);

  final List<ThumnailModel> thumnailList;
  final PageController controller;
  final ValueNotifier<int> _currentPageNotifier;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: PageView.builder(
          itemCount: thumnailList.length,
          controller: controller,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
              child: Image.network(
                thumnailList[index].image,
                fit: BoxFit.cover,
              ),
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }
}
