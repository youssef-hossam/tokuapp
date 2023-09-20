import 'package:flutter/material.dart';
import 'package:tokuapp_copy/components/Member_item.dart';
import 'package:tokuapp_copy/models/number.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});
  @override
  State<MemberPage> createState() => _MemberPageState();
}

const List<ItemModel> members = [
  ItemModel(
    engname: "daughter",
    image: "assets/images/family_members/family_daughter.png",
    japname: "ichi",
    sound: 'sounds/family_members/daughter.wav',
  ),
  ItemModel(
    engname: "father",
    image: "assets/images/family_members/family_father.png",
    japname: "chichi",
    sound: 'sounds/family_members/father.wav',
  ),
  ItemModel(
    engname: "grand father",
    image: "assets/images/family_members/family_grandfather.png",
    japname: "sofu",
    sound: 'sounds/family_members/grand_father.wav',
  ),
  ItemModel(
    engname: "grand mother",
    image: "assets/images/family_members/family_grandmother.png",
    japname: "sobo ",
    sound: 'sounds/family_members/grand_mother.wav',
  ),
  ItemModel(
    engname: "mother",
    image: "assets/images/family_members/family_mother.png",
    japname: "haha",
    sound: 'sounds/family_members/mother.wav',
  ),
  ItemModel(
    engname: "older brother",
    image: "assets/images/family_members/family_older_brother.png",
    japname: "ane ",
    sound: 'sounds/family_members/older_bother.wav',
  ),
  ItemModel(
    engname: "older sister",
    image: "assets/images/family_members/family_older_sister.png",
    japname: "ane ",
    sound: 'sounds/family_members/older_sister.wav',
  ),
  ItemModel(
    engname: "son",
    image: "assets/images/family_members/family_son.png",
    japname: "hachi",
    sound: 'sounds/family_members/son.wav',
  ),
  ItemModel(
    engname: "younger brother",
    image: "assets/images/family_members/family_younger_brother.png",
    japname: "otouto",
    sound: 'sounds/family_members/younger_brohter.wav',
  ),
  ItemModel(
    engname: "younger sister",
    image: "assets/images/family_members/family_younger_sister.png",
    japname: "imouto",
    sound: 'sounds/family_members/younger_sister.wav',
  )
];

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Family Member"),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return MemberItem(
            member: members[index],
          );
        },
      ),
    );
  }
}
