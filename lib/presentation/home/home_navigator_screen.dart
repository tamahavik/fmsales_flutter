import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/inject/injectable.dart';
import 'package:ufi/presentation/home/bloc/home_bloc.dart';
import 'package:ufi/presentation/home/bloc/navigation_bloc.dart';
import 'package:ufi/presentation/home/components/bottom_navigation_menu.dart';
import 'package:ufi/presentation/home/components/floating_action.dart';
import 'package:ufi/presentation/home/components/history_screen.dart';
import 'package:ufi/presentation/home/components/home_screen.dart';
import 'package:ufi/screen/verification_screen.dart';

class HomeNavigationScreen extends StatefulWidget {
  const HomeNavigationScreen({super.key});

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  BottomAppBarEnums _currentIndex = BottomAppBarEnums.home;
  String _fullName = "";

  void _stateNavigationController(BuildContext context, NavigationState state) {
    state.map(
      initial: (value) => _currentIndex = BottomAppBarEnums.home,
      home: (value) => _currentIndex = BottomAppBarEnums.home,
      history: (value) => _currentIndex = BottomAppBarEnums.history,
    );
  }

  void _stateHomeController(BuildContext context, HomeState state) {
    state.map(
      initial: (value) {},
      fullName: (value) => {
        _fullName = value.fullName,
      },
      verification: (value) => Get.to(() => const VerificationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            lazy: true,
            create: (context) =>
                getIt<HomeBloc>()..add(const HomeEvent.started())),
        BlocProvider(create: (context) => getIt<NavigationBloc>()),
      ],
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: _stateHomeController,
        builder: (context, state) {
          return BlocConsumer<NavigationBloc, NavigationState>(
            listener: _stateNavigationController,
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.blue[600],
                  title: Text(_fullName),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.logout),
                      onPressed: () {},
                    ),
                  ],
                ),
                body: state.map(
                  initial: (value) => const HomeScreen(),
                  home: (value) => const HomeScreen(),
                  history: (value) => const HistoryScreen(),
                ),
                floatingActionButton:
                    FloatingAction(currentIndex: _currentIndex),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar:
                    BottomNavigationMenu(currentIndex: _currentIndex),
              );
            },
          );
        },
      ),
    );
  }
}
