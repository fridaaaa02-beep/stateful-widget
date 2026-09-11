import 'package:flutter/material.dart';

class LatSwitch extends StatefulWidget {
  const LatSwitch({super.key});

  @override
  State<LatSwitch> createState() => _LatSwitchState();
}

class _LatSwitchState extends State<LatSwitch> {
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            // Nilai bool ini akan mengaktifkan switch
            value: _isSwitchOn,
            activeColor: Colors.blue,
            onChanged: (bool value) {
              // Di bawah ini akan terpanggil ketika user mengaktifkan switch
              setState(() {
                _isSwitchOn = value;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Status Switch: ${_isSwitchOn ? 'Aktif' : 'Nonaktif'}',
          ),
        ],
      ),
    );
  }
}