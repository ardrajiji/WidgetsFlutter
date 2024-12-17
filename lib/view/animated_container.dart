import 'package:flutter/material.dart';

// A StatefulWidget to demonstrate the use of AnimatedContainer
class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  // Properties to control the width, height, color, and border radius of the container
  double _width = 100.0; // Initial width of the container
  double _height = 100.0; // Initial height of the container
  Color _color = Colors.blue; // Initial color of the container
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0); // Initial border radius

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),

      // Main body of the widget
      body: Center(
        // GestureDetector listens for user interactions
        child: GestureDetector(
          onTap: () {
            // Toggle the properties when the container is tapped
            setState(() {
              // Change the dimensions of the container
              _width = _width == 100.0 ? 200.0 : 100.0;
              _height = _height == 100.0 ? 200.0 : 100.0;

              // Change the color of the container
              _color = _color == Colors.blue ? Colors.red : Colors.blue;

              // Change the border radius of the container
              _borderRadius = _borderRadius == BorderRadius.circular(8.0)
                  ? BorderRadius.circular(50.0)
                  : BorderRadius.circular(8.0);
            });
          },

          // AnimatedContainer automatically animates changes to its properties
          child: AnimatedContainer(
            duration: const Duration(seconds: 1), // Duration of the animation
            curve: Curves.easeInOut, // Animation curve for smooth transitions
            width: _width, // Animated width
            height: _height, // Animated height
            decoration: BoxDecoration(
              color: _color, // Animated background color
              borderRadius: _borderRadius, // Animated border radius
            ),

            // Child widget inside the AnimatedContainer
            child: const Center(
              child: Text(
                'Tap me!', // Text displayed inside the container
                style: TextStyle(color: Colors.white), // Text style
              ),
            ),
          ),
        ),
      ),
    );
  }
}
