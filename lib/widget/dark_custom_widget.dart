import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkModeWidget extends StatelessWidget {
  DarkModeWidget({
    required this.function,
    required this.value,
    Key? key,
  }) : super(key: key);

  void Function(bool)? function;
  bool value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('dark'.tr),
          CupertinoSwitch(
            onChanged: function,
            value: value,
          )
        ],
      ),
    );
  }
}
