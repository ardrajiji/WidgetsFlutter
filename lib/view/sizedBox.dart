import 'package:flutter/material.dart';

class SizedBoxWidget extends StatefulWidget {
  const SizedBoxWidget({super.key});

  @override
  _SizedBoxWidgetState createState() => _SizedBoxWidgetState();
}

class _SizedBoxWidgetState extends State<SizedBoxWidget> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "SizedBox Example",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example 1: Using SizedBox with specific width and height
            Padding(
              padding:  const EdgeInsets.all(30.0),
              child: SizedBox(
                width: 200.0, // Adds horizontal space of 200 pixels
                height: 100.0, // Adds vertical space of 100 pixels
                child: Container(
                  color: const Color.fromARGB(255, 182, 221, 54),
                  child: const Center(
                    child: Text(
                      "OCIUZ ACADEMY",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ),
            
            // Example 2: Using SizedBox.expand to fill available space
            SizedBox.expand(
              child: Container(
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    "OCIUZ ACADEMY",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
              ),
            ),

            // Example 3: Using SizedBox.fromSize with custom size
            SizedBox.fromSize(
              size: const Size(150, 150),
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "OCIUZ ACADEMY",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
              ),
            ),

            // Example 4: Using SizedBox.shrink for conditional display
            isVisible
                ? Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: const Center(child: Text('I am visible')),
                  )
                : const SizedBox.shrink(), // Takes zero space when hidden
            
            const SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Text(isVisible ? 'Hide Box' : 'Show Box'),
            ),
          ],
        ),
      ),
    );
  }
}
