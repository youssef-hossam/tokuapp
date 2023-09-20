import 'package:flutter/material.dart';
import 'package:tokuapp_copy/models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                item.engname,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                item.japname,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            item.playAudio();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
