import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIcon extends StatefulWidget {
  final IconData icon;
  const CustomIcon({super.key, required this.icon});

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _curve;

  bool isFav = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    _colorAnimation =
        ColorTween(begin: Colors.grey[400], end: Colors.orange).animate(_curve);

    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 35, end: 50), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50, end: 35), weight: 50),
    ]).animate(_curve);

    _controller.addListener(() {});
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return IconButton(
          icon: Icon(
            widget.icon,
            size: _sizeAnimation.value,
            color: _colorAnimation.value,
          ),
          onPressed: () {
            isFav ? _controller.reverse() : _controller.forward();
          },
        );
      },
    );
  }
}
