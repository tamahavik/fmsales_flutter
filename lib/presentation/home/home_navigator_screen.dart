import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/inject/injectable.dart';
import 'package:ufi/presentation/home/bloc/home_bloc.dart';
import 'package:ufi/presentation/home/bloc/navigation_bloc.dart';
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
        print(_fullName),
        _fullName = value.fullName,
        print(_fullName),
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
                floatingActionButton: SpeedDial(
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
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar: BottomAppBar(
                  color: Colors.blue[600],
                  shape: const CircularNotchedRectangle(),
                  notchMargin: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () => context
                              .read<NavigationBloc>()
                              .add(NavigationEvent.homeMenu(_currentIndex)),
                          icon: const Icon(Icons.home),
                          color: _currentIndex == BottomAppBarEnums.home
                              ? Colors.white
                              : Colors.grey[800],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () => context
                              .read<NavigationBloc>()
                              .add(NavigationEvent.historyMenu(_currentIndex)),
                          icon: const Icon(Icons.history),
                          color: _currentIndex == BottomAppBarEnums.history
                              ? Colors.white
                              : Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
