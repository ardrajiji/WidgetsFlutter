import 'package:flutter/material.dart';

class ListtileWidget extends StatelessWidget {
  const ListtileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var names = ['Manu', 'Maya', 'Arun', 'Amal'];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
           Navigator.of(context).pop();
          },),
        title: const Text("ListTile Example"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Text(
                names[index][0], // First letter of the name
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(names[index]),
            subtitle: Text('Subtitle for ${names[index]}'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Tapped on ${names[index]}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
