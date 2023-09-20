// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tokuapp_copy/components/category_item.dart';
import 'package:tokuapp_copy/screens/colors_page.dart';
import 'package:tokuapp_copy/screens/family_member.dart';
import 'package:tokuapp_copy/screens/numbers_page.dart';
import 'package:tokuapp_copy/screens/phrarase_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Tokyo"),
      ),
      body: Column(
        children: [
          Category("numbers", const Color.fromARGB(255, 186, 189, 15), () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const NumbersPage();
              },
            ));
          }),
          Category("Colors", Colors.green, () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ColorsPage();
              },
            ));
          }),
          Category("family_members", const Color.fromARGB(255, 23, 57, 172),
              () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const MemberPage();
              },
            ));
          }),
          Category("phrarase", const Color.fromARGB(255, 115, 138, 214), () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const PhrarasePage();
              },
            ));
          }),
        ],
      ),
    );
  }
}
