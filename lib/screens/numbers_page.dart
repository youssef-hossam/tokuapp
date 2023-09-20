import 'package:flutter/material.dart';
import 'package:tokuapp_copy/components/item.dart';
import 'package:tokuapp_copy/models/number.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});
  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

const List<ItemModel> numbers = [
  ItemModel(
    engname: "one",
    image: "assets/images/numbers/number_one.png",
    japname: "ichi",
    sound: 'sounds/numbers/number_one_sound.mp3',
  ),
  ItemModel(
    engname: "two",
    image: "assets/images/numbers/number_two.png",
    japname: "ni",
    sound: 'sounds/numbers/number_two_sound.mp3',
  ),
  ItemModel(
    engname: "tree",
    image: "assets/images/numbers/number_three.png",
    japname: "san",
    sound: 'sounds/numbers/number_three_sound.mp3',
  ),
  ItemModel(
    engname: "four",
    image: "assets/images/numbers/number_four.png",
    japname: "yon ",
    sound: 'sounds/numbers/number_four_sound.mp3',
  ),
  ItemModel(
    engname: "five",
    image: "assets/images/numbers/number_five.png",
    japname: "go ",
    sound: 'sounds/numbers/number_five_sound.mp3',
  ),
  ItemModel(
    engname: "six",
    image: "assets/images/numbers/number_six.png",
    japname: "roku ",
    sound: 'sounds/numbers/number_six_sound.mp3',
  ),
  ItemModel(
    engname: "seven",
    image: "assets/images/numbers/number_seven.png",
    japname: "nana ",
    sound: 'sounds/numbers/number_seven_sound.mp3',
  ),
  ItemModel(
    engname: "eight",
    image: "assets/images/numbers/number_eight.png",
    japname: "hachi",
    sound: 'sounds/numbers/number_eight_sound.mp3',
  ),
  ItemModel(
    engname: "nine",
    image: "assets/images/numbers/number_nine.png",
    japname: "kyu ",
    sound: 'sounds/numbers/number_nine_sound.mp3',
  ),
  ItemModel(
    engname: "ten",
    image: "assets/images/numbers/number_ten.png",
    japname: "ju ",
    sound: 'sounds/numbers/number_ten_sound.mp3',
  )
];

class _NumbersPageState extends State<NumbersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Numbers"),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            number: numbers[index],

            // sound: sounds[index],
          );
        },
      ),
    );
  }
}
