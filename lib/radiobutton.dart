import 'package:flutter/material.dart';

enum Gender { pria, wanita }

class Latradiobutton extends StatefulWidget {
  const Latradiobutton({super.key});

  @override
  State<Latradiobutton> createState() => _LatRadioState();
}

class _LatRadioState extends State<Latradiobutton> {
  Gender? _jenisKelamin = Gender.pria;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'Pilih Jenis Kelamin:',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          ListTile(
            title: const Text('Laki-Laki'),
            leading: Radio<Gender>(
              value: Gender.pria,
              groupValue: _jenisKelamin,
              onChanged: (Gender? value) {
                setState(() {
                  _jenisKelamin = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Perempuan'),
            leading: Radio<Gender>(
              value: Gender.wanita,
              groupValue: _jenisKelamin,
              onChanged: (Gender? value) {
                setState(() {
                  _jenisKelamin = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}