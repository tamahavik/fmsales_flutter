import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/presentation/home/bloc/navigation_bloc.dart';
import 'package:ufi/presentation/home/components/home_icon_button.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({
    super.key,
    required BottomAppBarEnums currentIndex,
  }) : _currentIndex = currentIndex;

  final BottomAppBarEnums _currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue[600],
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeIconButton(
            onPress: () => context
                .read<NavigationBloc>()
                .add(NavigationEvent.homeMenu(_currentIndex)),
            icon: const Icon(Icons.home),
            color: _currentIndex == BottomAppBarEnums.home
                ? Colors.white
                : Colors.grey[800],
          ),
          const SizedBox(
            width: 50,
          ),
          HomeIconButton(
            onPress: () => context
                .read<NavigationBloc>()
                .add(NavigationEvent.historyMenu(_currentIndex)),
            icon: const Icon(Icons.history),
            color: _currentIndex == BottomAppBarEnums.history
                ? Colors.white
                : Colors.grey[800],
          ),
        ],
      ),
    );
  }
}
