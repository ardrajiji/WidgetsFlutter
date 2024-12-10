import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: const Center(
        child: Text(
          'body',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the next page when pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextPage()),
          );
        },
        tooltip: 'Go to Next Page', // Tooltip when FAB is long pressed
        backgroundColor: Colors.blue, // Background color
        foregroundColor: Colors.white, // Icon color
        elevation: 10.0, // Shadow below the FAB
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Custom FAB shape
        ),
        heroTag: 'fab-next-page', // Unique hero tag for animations
        child: const Icon(Icons.arrow_forward), // Icon inside the FAB
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Location of the FAB
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: const Center(
        child: Text(
          'You have navigated to the Next Page!',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

