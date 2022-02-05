import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextDividerBelow extends StatelessWidget {
  final String? text;
  const TextDividerBelow({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
      child: Text(text!),
    );
  }
}
