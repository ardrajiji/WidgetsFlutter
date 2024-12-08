import 'package:flutter/material.dart';

class AlertdialogWidget extends StatelessWidget {
  const AlertdialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the dialog when the button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('AlertDialog'),
                  content: const Text('This is a simple alert dialog.'),
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: const Text('Cancel'),
                    ),
                     TextButton(
                      onPressed: () {
                        // Add any action you want
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show AlertDialog'),
        ),
      ),
    );
  }
}
