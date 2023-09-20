import 'package:flutter/material.dart';
import 'package:tokuapp_copy/components/phrarase_item.dart';

import 'package:tokuapp_copy/models/number.dart';

class PhrarasePage extends StatefulWidget {
  const PhrarasePage({super.key});

  @override
  State<PhrarasePage> createState() => _PhrarasePageState();
}

const List<ItemModel> phrarases = [
  ItemModel(
    engname: "are you coming",
    japname: "ichi",
    sound: 'sounds/phrases/are_you_coming.wav',
  ),
  ItemModel(
    engname: "dont forget to subscribe",
    japname: "ni",
    sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
  ),
  ItemModel(
    engname: "how are you feeling",
    japname: "san",
    sound: 'sounds/phrases/how_are_you_feeling.wav',
  ),
  ItemModel(
    engname: "i love anime",
    japname: "yon ",
    sound: 'sounds/phrases/i_love_anime.wav',
  ),
  ItemModel(
    engname: "i love programming",
    japname: "go ",
    sound: 'sounds/phrases/i_love_programming.wav',
  ),
  ItemModel(
    engname: "programming is easy",
    japname: "roku ",
    sound: 'sounds/phrases/programming_is_easy.wav',
  ),
  ItemModel(
    engname: "whats your name",
    japname: "nana ",
    sound: 'sounds/phrases/what_is_your_name.wav',
  ),
  ItemModel(
    engname: "where are you doing",
    japname: "hachi",
    sound: 'sounds/phrases/where_are_you_going.wav',
  ),
  ItemModel(
    engname: "yes iam coming",
    japname: "kyu ",
    sound: 'sounds/phrases/yes_im_coming.wav',
  ),
];

class _PhrarasePageState extends State<PhrarasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 9, 12),
        title: const Text("phrarase"),
      ),
      body: ListView.builder(
        itemCount: phrarases.length,
        itemBuilder: (context, index) {
          return PhraraseItem(
            item: phrarases[index],
            color: const Color(0xff50ADC7),
          );
        },
      ),
      // body: ListView.builder(itemBuilder: ),
    );
  }
}
