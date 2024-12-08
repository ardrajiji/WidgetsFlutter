import 'package:flutter/material.dart';
import 'package:flutterwidgets/view/animatedopacity.dart';
import 'package:flutterwidgets/view/indexedstack.dart';
import 'package:flutterwidgets/view/listtile.dart';
import 'package:flutterwidgets/view/refreshindecator.dart';
import 'package:flutterwidgets/view/safearea.dart';
import 'package:flutterwidgets/view/selectabletext.dart';
import 'package:flutterwidgets/view/switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      body:  Center(
        child: Column(
          children: [
             ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnimatedOpacityWidget()),
              );
            },
            child: const Text('AnimatedOpacity'),
          ),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IndexedstackWidget()),
              );
            },
            child: const Text('IndexedStack'),
          ),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListtileWidget()),
              );
            },
            child: const Text('Listtile'),
          ),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RefreshindecatorWidget()),
              );
            },
            child: const Text('RefreshIndicator'),
          ),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SafeAreaWidget()),
              );
            },
            child: const Text('SafeArea'),
          ),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SelectableTextWidget()),
              );
            },
            child: const Text('SelectableText'),
          ),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SwitchWidget()),
              );
            },
            child: const Text('Switch'),
          ),
          ],
        ),
      ),
    );
  }
}