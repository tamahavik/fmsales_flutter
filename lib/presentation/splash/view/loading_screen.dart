import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ufi/components/background.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double _value = 0;

  void determinateIndicator() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_value >= 1) {
          timer.cancel();
        } else {
          _value += 0.1;
        }
      });
    });
  }

  @override
  void initState() {
    determinateIndicator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 150),
                child: Image.asset(
                  'assets/images/mobile-sales.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${(_value * 100).floor()}%',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: LinearProgressIndicator(
                      value: _value,
                      backgroundColor: const Color(0xB3FFFFFF),
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
