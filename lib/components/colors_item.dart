import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp_copy/models/number.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.color});
  final ItemModel color;
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
              image: AssetImage(color.image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  color.japname,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(color.engname,
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(color.sound));
            },
            icon: const Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}
