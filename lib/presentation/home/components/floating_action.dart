import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/presentation/home/bloc/home_bloc.dart';
import 'package:ufi/presentation/today/bloc/today_bloc.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({
    super.key,
    required BottomAppBarEnums currentIndex,
  }) : _currentIndex = currentIndex;

  final BottomAppBarEnums _currentIndex;

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.menu,
      activeIcon: Icons.close,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      backgroundColor: Theme.of(context).colorScheme.primary,
      animatedIcon: AnimatedIcons.menu_close,
      overlayOpacity: 0.1,
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
      spacing: 10,
      children: [
        SpeedDialChild(
          onTap: () =>
              context.read<HomeBloc>().add(const HomeEvent.verificationMenu()),
          shape: const CircleBorder(),
          label: 'New Customer',
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          child: Icon(
            Icons.article_outlined,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        SpeedDialChild(
          onTap: () =>
              context.read<TodayBloc>().add(const TodayEvent.synchronize()),
          shape: const CircleBorder(),
          label: 'Sync Leads',
          visible: _currentIndex == BottomAppBarEnums.home,
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          child: Icon(
            Icons.refresh,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
