import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: PopUpMenuButton()));
}

class PopUpMenuButton extends StatelessWidget {
  const PopUpMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopUpMenuButton '),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'Page 1',
                child: Text('Go to Page 1'),
              ),
              const PopupMenuItem(
                value: 'Page 2',
                child: Text('Go to Page 2'),
              ),
              const PopupMenuItem(
                value: 'Page 3',
                child: Text('Go to Page 3'),
              ),
            ],
            onSelected: (value) {
              if (value == 'Page 1') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageOne()),
                );
              } else if (value == 'Page 2') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageTwo()),
                );
              } else if (value == 'Page 3') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageThree()),
                );
              }
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Body'),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: const Center(
        child: Text('Welcome to Page 1'),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: const Center(
        child: Text('Welcome to Page 2'),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: const Center(
        child: Text('Welcome to Page 3'),
      ),
    );
  }
}
