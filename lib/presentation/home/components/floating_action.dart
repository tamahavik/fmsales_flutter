import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/presentation/home/bloc/home_bloc.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({
    super.key,
    required BottomAppBarEnums currentIndex,
  }) : _currentIndex = currentIndex;

  final BottomAppBarEnums _currentIndex;

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      spacing: 10,
      children: [
        SpeedDialChild(
          onTap: () => context
              .read<HomeBloc>()
              .add(const HomeEvent.verificationMenu()),
          child: const Icon(
            Icons.article_outlined,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue[600],
        ),
        SpeedDialChild(
          visible: _currentIndex == BottomAppBarEnums.home,
          onTap: () {},
          backgroundColor: Colors.blue[600],
          child: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}