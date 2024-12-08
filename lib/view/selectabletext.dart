import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Selectable Text'),
    ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SelectableText(
                    "Advanced SelectableText with custom styling and cursor properties.\n"
                    "1. Supports multi-line text.\n"
                    "2. Allows interaction callbacks.\n"
                    "3. Shows a cursor for better UX.",
                    style: const TextStyle(fontSize: 18, color: Colors.black87),
                    textAlign: TextAlign.left,
                    showCursor: true,
                    cursorColor: Colors.blue,
                    cursorWidth: 2.0,
                    cursorRadius: const Radius.circular(5.0),
                    enableInteractiveSelection: true,
                    onSelectionChanged: (selection, cause) {
                      // print(
                      //     "Selected Range: ${selection.start} - ${selection.end}, Cause: $cause");
                    },
                    scrollPhysics: const BouncingScrollPhysics(),
                  ),
                  const SizedBox(height: 20),
                  const Text("Note: The above text is selectable and interactive."),
              
            ]
          ),
        ),
      ),
    );
  }
}