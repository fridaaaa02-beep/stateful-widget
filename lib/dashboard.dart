import 'package:flutter/material.dart';

import 'package:stateful_widget/floatingactionbutton.dart';
import 'package:stateful_widget/iconbutton.dart';
import 'package:stateful_widget/latcheckbox.dart';
import 'package:stateful_widget/latdropdown.dart';
import 'package:stateful_widget/lattextbutton.dart';
import 'package:stateful_widget/radiobutton.dart';
import 'package:stateful_widget/slider.dart';
import 'package:stateful_widget/switch.dart';
import 'package:stateful_widget/textfield.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const LatFloatingActionButton(),
                  ),
                );
              },
              child: const Text('Floating Action Button'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LatIconButton(),
                  ),
                );
              },
              child: const Text('Icon Button'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  Latcheckbox(),
                  ),
                );
              },
              child: const Text('Checkbox'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Latdropdown(),
                  ),
                );
              },
              child: const Text('Dropdown'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Lattextbutton(),
                  ),
                );
              },
              child: const Text('Text Button'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Latradiobutton(),
                  ),
                );
              },
              child: const Text('Radio Button'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LatSlider(),
                  ),
                );
              },
              child: const Text('Slider'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LatSwitch(),
                  ),
                );
              },
              child: const Text('Switch'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LatTextField(),
                  ),
                );
              },
              child: const Text('Text Field'),
            ),
          ],
        ),
      ),
    );
  }
}