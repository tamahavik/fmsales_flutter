import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ufi/presentation/today/bloc/today_bloc.dart';
import 'package:ufi/presentation/today/components/task_card.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  void _stateController(BuildContext context, TodayState state) {}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodayBloc, TodayState>(
      listener: _stateController,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: ListView(
            dragStartBehavior: DragStartBehavior.down,
            children: const [

            ],
          ),
        );
      },
    );
  }
}
