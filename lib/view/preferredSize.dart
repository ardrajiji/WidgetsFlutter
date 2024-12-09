import 'package:flutter/material.dart';

class PreferredSizedWidget extends StatelessWidget {
  const PreferredSizedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      // Custom AppBar with a specific height using PreferredSize
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0), // Custom height
        child: AppBar(
          title: const Text('Custom AppBar'),
          centerTitle: true,
          backgroundColor: Colors.teal, // Custom color
        ),
      ),

      body: Column(
        children: [
          const Text("PreferredSizeWidget Example",
          style: TextStyle(fontSize: 20),),

           // Another PreferredSize widget for a custom-styled container
           PreferredSize(
            preferredSize: const Size.fromHeight(300.0), // Custom height for the container
            child: Container(
              color: Colors.blue, // Background color for the container
              child: const Center(
                child: Text(
                  'Custom Widget',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 16, 
                  ),
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}