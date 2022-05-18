import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void onChangeShape() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300) + 70;
      _height = random.nextInt(300) + 70;
      _color = Color.fromARGB(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100) + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration(milliseconds: 400),
           curve: Curves.easeOutCubic,
           width: _width, 
           height: _height,
           decoration: BoxDecoration(
             color: _color,
             borderRadius: _borderRadius
           ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onChangeShape,
        child: const Icon(Icons.play_circle_outline),
      ),
    );
  }
}