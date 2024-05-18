import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation page"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    _color = Colors.brown;
                  });
                },
                child: const Text("Click me"),
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: 300,
                height: 100,
                color: _color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
