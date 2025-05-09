import 'package:flutter/material.dart';
import 'dart:ui';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
    'Adriel',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff91ba6a),
        title: const Text(
          'Pantalla 3 ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return listItems.where((String item) {
            return item.contains(textEditingValue.text.toLowerCase());
          });
        },
        onSelected: (String item) {
          print('The $item was selected');
        },
      ),
    );
  }
}
