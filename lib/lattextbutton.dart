import 'package:flutter/material.dart';

class Lattextbutton extends StatefulWidget {
  const Lattextbutton({super.key});

  @override
  State<Lattextbutton> createState() => _teksbutonState();
}

class _teksbutonState extends State<Lattextbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : TextButton(onPressed: () {}, child: const Text('Text Button')),
    );
  }
}