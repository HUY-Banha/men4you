import 'package:flutter/material.dart';
import 'package:men4you/data/models/thumnail_model.dart';
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
        dotHeight: 6,
        spacing: 12.0,
        dotWidth: 16,
        activeDotColor: Colors.black87,
        type: SwapType.zRotation,
      ),
    );
  }
}
