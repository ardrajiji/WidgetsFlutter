import 'package:flutter/material.dart';

class Longpressdraggablewidget extends StatelessWidget {
  const Longpressdraggablewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "LongPressDraggable Example",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body:  Center(
        child: Column(
          children: [
            // LongPressDraggable widget allows drag-and-drop functionality
            LongPressDraggable<String>(
            data: "Box",

            // Widget that appears under the user's finger during dragging
            feedback: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Icon(Icons.open_with, color: Colors.white, size: 50),
            ),

            // Widget that replaces the child while the dragging is in progress
            childWhenDragging: Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: const Center(
                child: Text('Moving...', style: TextStyle(color: Colors.white)),
              ),
            ),

            // Callback when the drag starts
            onDragStarted: () => print('Drag started!'),

            // Callback when the drag is completed successfully
            onDragCompleted: () => print('Drag completed!'),

            // Callback when the drag is canceled (dropped outside a valid target)
            onDraggableCanceled: (velocity, offset) => print('Drag canceled!'),

             // The widget shown when the user is not dragging
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Center(
                child: Text('Drag me', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
            
          ],
        ),
      ),
    );
  }
}