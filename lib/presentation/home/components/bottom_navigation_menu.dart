import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/presentation/home/bloc/navigation_bloc.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({
    super.key,
    required BottomAppBarEnums currentIndex,
  }) : _currentIndex = currentIndex;

  final BottomAppBarEnums _currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      currentIndex: _currentIndex.value,
      iconSize: 30,
      onTap: (newIndex) => newIndex == BottomAppBarEnums.home.value
          ? context
              .read<NavigationBloc>()
              .add(NavigationEvent.homeMenu(_currentIndex))
          : context
              .read<NavigationBloc>()
              .add(NavigationEvent.historyMenu(_currentIndex)),
      backgroundColor: Theme.of(context).colorScheme.primary,
      unselectedLabelStyle: TextStyle(
        color: Theme.of(context).colorScheme.outline,
      ),
      unselectedItemColor: Theme.of(context).colorScheme.outline,
      selectedLabelStyle: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      selectedItemColor: Theme.of(context).colorScheme.onPrimary,
      items: const [
        BottomNavigationBarItem(
          label: 'Hari Ini',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Riwayat',
          icon: Icon(Icons.history),
        ),
      ],
    );
  }
}
