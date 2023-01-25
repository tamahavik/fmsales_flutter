import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final Widget child;
  const Background({super.key, required this.child});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF10B0E6),
                Color(0xFF0260A5),
              ],
            ),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
