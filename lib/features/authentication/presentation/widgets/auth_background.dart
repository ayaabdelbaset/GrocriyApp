import 'dart:ui';

import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),

        Positioned(
          top: -120,
          left: -80,
          child: _blurCircle(
            const Color(0xffffd9d5),
            260,
          ),
        ),

        Positioned(
          top: -100,
          right: -90,
          child: _blurCircle(
            const Color(0xffffe5df),
            240,
          ),
        ),

        Positioned(
          top: 100,
          left: 80,
          child: _blurCircle(
            const Color(0xfffff0ec),
            180,
          ),
        ),

        Positioned(
          bottom: -100,
          right: -80,
          child: _blurCircle(
            const Color(0xffe5e7ff),
            250,
          ),
        ),

        child,
      ],
    );
  }

  Widget _blurCircle(Color color, double size) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: 70,
        sigmaY: 70,
      ),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}