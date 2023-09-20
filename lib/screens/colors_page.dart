import 'package:flutter/material.dart';
import 'package:tokuapp_copy/components/colors_item.dart';
import 'package:tokuapp_copy/models/number.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({super.key});

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

const List<ItemModel> color = [
  ItemModel(
    engname: "black",
    image: "assets/images/colors/color_black.png",
    japname: "",
    sound: "sounds/colors/black.wav",
  ),
  ItemModel(
      engname: "brown",
      image: "assets/images/colors/color_brown.png",
      japname: "",
      sound: "sounds/colors/brown.wav"),
  ItemModel(
      engname: "dusty yellow",
      image: "assets/images/colors/color_dusty_yellow.png",
      japname: "",
      sound: "sounds/colors/dusty_yellow.wav"),
  ItemModel(
      engname: "gray",
      image: "assets/images/colors/color_gray.png",
      japname: "",
      sound: "sounds/colors/gray.wav"),
  ItemModel(
      engname: "green",
      image: "assets/images/colors/color_green.png",
      japname: "",
      sound: "sounds/colors/green.wav"),
  ItemModel(
      engname: "red",
      image: "assets/images/colors/color_red.png",
      japname: "",
      sound: "sounds/colors/red.wav"),
  ItemModel(
      engname: "white",
      image: "assets/images/colors/color_white.png",
      japname: "",
      sound: "sounds/colors/white.wav"),
  ItemModel(
      engname: "yellow",
      image: "assets/images/colors/yellow.png",
      japname: "",
      sound: "sounds/colors/yellow.wav")
];

class _ColorsPageState extends State<ColorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return ColorsItem(color: color[index]);
        },
      ),
    );
  }
}
