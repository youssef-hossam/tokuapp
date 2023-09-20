import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp_copy/models/number.dart';

class PhraraseItem extends StatelessWidget {
  const PhraraseItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  item.japname,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  item.engname,
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
              final player = AudioPlayer();
              player.play(AssetSource(item.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
