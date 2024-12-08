import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
   double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
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
            title: const Text('AnimatedOpacity Example')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _opacity,
                  duration:const Duration(seconds: 2),
                  curve: Curves.easeInOutQuart,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                    child: Image.asset('assets/images/user1.jpg'),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _toggleOpacity,
                  child: const Text('Click here'),
                ),
              ],
            ),
          ),
        );
      }
    }