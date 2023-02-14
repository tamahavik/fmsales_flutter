import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ufi/components/task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: ListView(
        dragStartBehavior: DragStartBehavior.down,
        children: [
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
        ],
      ),
    );
  }
}
