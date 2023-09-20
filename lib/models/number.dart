import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String japname;
  final String engname;
  final String sound;

  const ItemModel({
    this.image,
    required this.engname,
    required this.japname,
    required this.sound,
  });
  playAudio() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

// class ItemPhrarase {
//   final String japnphrarase;
//   final String engpharase;
//   final String soundpharase;
//   const ItemPhrarase({
//     required this.engpharase,
//     required this.japnphrarase,
//     required this.soundpharase,
//   });
// }
