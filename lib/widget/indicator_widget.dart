import 'package:flutter/material.dart';
import 'package:men4you/data/repositories/home_repository.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    Key? key,
    required this.controller,
    required this.thumnailList,
  }) : super(key: key);

  final PageController controller;
  final List<ThumnailModel> thumnailList;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: thumnailList.length,
      effect: const SwapEffect(
        dotHeight: 10,
        dotWidth: 10,
        type: SwapType.zRotation,
      ),
    );
  }
}
