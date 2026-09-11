import 'package:flutter/material.dart';

const List<String> list = <String>['Satu', 'Dua', 'Tiga', 'Empat'];

class Latdropdown extends StatefulWidget {
  const Latdropdown({super.key});
  @override
  State<Latdropdown> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<Latdropdown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    )
    );

  }
}
