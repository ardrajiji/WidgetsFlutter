import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  const DismissibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible Widget'),
      ),
      body: const ProgrammingLanguagesList(),
    );
  }
}

class ProgrammingLanguagesList extends StatefulWidget {
  const ProgrammingLanguagesList({super.key});

  @override
  _ProgrammingLanguagesListState createState() =>
      _ProgrammingLanguagesListState();
}

class _ProgrammingLanguagesListState extends State<ProgrammingLanguagesList> {
  final List<String> languages = [
    "Python",
    "Java",
    "C++",
    "JavaScript",
    "Dart",
    "Swift",
    "Ruby",
    "Kotlin",
    "C#",
    "PHP",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(languages[index]),
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              // Swipe right-to-left (Delete action)
              setState(() {
                languages.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${languages[index]} deleted")),
              );
            } else if (direction == DismissDirection.startToEnd) {
              setState(() {
                languages.removeAt(index);
              });
              // Swipe left-to-right (Favorite action)
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${languages[index]} marked as favorite")),
              );
            }
          },
          background: Container(
            color: Colors.green,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(Icons.favorite, color: Colors.white),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          child: ListTile(
            title: Text(languages[index]),
            leading: const Icon(Icons.code, color: Colors.blue),
          ),
        );
      },
    );
  }
}
