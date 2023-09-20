// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tokuapp_copy/models/item_model.dart';

import 'package:tokuapp_copy/models/number.dart';
// import 'package:tokuapp_copy/screens/numbers_page.dart';

class MemberItem extends StatelessWidget {
  const MemberItem({super.key, required this.member});
  final ItemModel member;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 80,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 230, 213, 213),
            child: Image(
              image: AssetImage(member.image!),
            ),
          ),
          Expanded(child: ItemInfo(item: member))
        ],
      ),
    );
  }
}
