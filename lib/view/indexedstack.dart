import 'package:flutter/material.dart';

class IndexedstackWidget extends StatefulWidget {
  const IndexedstackWidget({super.key});

  @override
  State<IndexedstackWidget> createState() => _IndexedstackWidgetState();
}

class _IndexedstackWidgetState extends State<IndexedstackWidget> {
  int _selectedIndex = 0;  // This controls which child of IndexedStack is visible.

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Change the displayed widget based on the selected index.
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('IndexedStack Demo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
           Navigator.of(context).pop();
          },),
      ),
      body: IndexedStack(
          index: _selectedIndex,
          children: const [
            Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Settings Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
          ],
        ),
    );
  }
}