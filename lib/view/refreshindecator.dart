import 'package:flutter/material.dart';

class RefreshindecatorWidget extends StatefulWidget {
  const RefreshindecatorWidget({super.key});

  @override
  State<RefreshindecatorWidget> createState() => _RefreshindecatorWidgetState();
}

class _RefreshindecatorWidgetState extends State<RefreshindecatorWidget> {
   List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  Future<void> _onRefresh() async {
  // Simulate a network call with a delay
  await Future.delayed(const Duration(seconds: 2));
  
  // Update data
  setState(() {
    items = ["Updated Item 1", "Updated Item 2", "Updated Item 3"];
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
           Navigator.of(context).pop();
          },),
        title: const Text("Pull to Refresh"),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        color: const Color.fromARGB(255, 228, 168, 164),
        backgroundColor: Colors.blue,
        strokeWidth: 3,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}