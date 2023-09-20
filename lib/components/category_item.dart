// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.text, this.color, this.ontap, {super.key});
  String? text;
  Color? color;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        // alignment: Alignment.,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
