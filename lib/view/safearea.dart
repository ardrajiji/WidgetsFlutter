import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safe Area Demo'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  "Content is safe from system UI!",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              padding: const EdgeInsets.all(16),
              child: const Text(
                " container example.",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}