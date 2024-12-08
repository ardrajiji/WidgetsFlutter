import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
   bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
           Navigator.of(context).pop();
          },),
        title: const Text('Switch Widget'),
      ),
      body: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Switch widget
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeColor: Colors.green,          // Color when ON
                  inactiveThumbColor: Colors.red,    // Thumb color when OFF
                  activeTrackColor: Colors.blueGrey,     // Track color when ON
                  inactiveTrackColor: Colors.grey,   // Track color when OFF
                ),
              // Display the current state of the switch
               Text(
                isSwitched ? 'Switch is ON' : 'Switch is OFF',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
      ),
    );
  }
}