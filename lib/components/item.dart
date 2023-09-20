import 'package:flutter/material.dart';
import 'package:tokuapp_copy/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:tokuapp_copy/screens/numbers_page.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.number,
    // required this.sound,
  });
  final ItemModel number;

  // final String sound;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      height: 80,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 230, 213, 213),
            child: Image(
              image: AssetImage(number.image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  number.japname,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(number.engname,
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
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}
