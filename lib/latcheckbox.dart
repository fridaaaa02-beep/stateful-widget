import 'package:flutter/material.dart';

class Latcheckbox extends StatefulWidget { 
  Latcheckbox({Key? key}) : super(key: key);
  @override
  State<Latcheckbox> createState() => _LatcheckboxState();
}

class _LatcheckboxState extends State<Latcheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan CheckBox')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ), // CheckBox
        ], // <Widget>[]
      ), // Row
    ); // Scaffold
  }
}