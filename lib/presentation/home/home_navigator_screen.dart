import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/inject/injectable.dart';
import 'package:ufi/presentation/home/bloc/home_bloc.dart';
import 'package:ufi/presentation/home/bloc/navigation_bloc.dart';
import 'package:ufi/presentation/home/components/application_bar.dart';
import 'package:ufi/presentation/home/components/bottom_navigation_menu.dart';
import 'package:ufi/presentation/home/components/floating_action.dart';
import 'package:ufi/presentation/home/components/history_screen.dart';
import 'package:ufi/presentation/splash/view/splash_screen.dart';
import 'package:ufi/presentation/today/bloc/today_bloc.dart';
import 'package:ufi/presentation/today/today_screen.dart';
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
      initial: (value) {
        context.read<TodayBloc>().add(const TodayEvent.started());
        _currentIndex = BottomAppBarEnums.home;
      },
      home: (value) {
        context.read<TodayBloc>().add(const TodayEvent.started());
        _currentIndex = BottomAppBarEnums.home;
      },
      history: (value) async {
        context.read<TodayBloc>().add(const TodayEvent.cancelTimer());
        _currentIndex = BottomAppBarEnums.history;
      },
    );
  }

  void _stateHomeController(BuildContext context, HomeState state) {
    state.map(
      initial: (value) {},
      fullName: (value) => _fullName = value.fullName,
      verification: (value) async {
        context.read<TodayBloc>().add(const TodayEvent.cancelTimer());
        await Navigator.of(context)
            .push(MaterialPageRoute(
                builder: (context) => const VerificationScreen()))
            .then((value) =>
                context.read<TodayBloc>().add(const TodayEvent.started()));
      },
      dialogLogout: (value) {
        Get.defaultDialog(
            title: "Sign Out",
            middleText: "Apakah anda ingin keluar?",
            actions: [
              TextButton(
                onPressed: () => Get.back(),
                child: const Text("Close"),
              ),
              TextButton(
                onPressed: () => context
                    .read<HomeBloc>()
                    .add(const HomeEvent.handleLogout()),
                child: const Text("Ok"),
              ),
            ]);
      },
      logout: (value) => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const SplashScreen()),
          (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<HomeBloc>()..add(const HomeEvent.started())),
        BlocProvider(create: (context) => getIt<NavigationBloc>()),
        BlocProvider(
            create: (context) =>
                getIt<TodayBloc>()..add(const TodayEvent.started())),
      ],
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: _stateHomeController,
        builder: (context, state) {
          return BlocConsumer<NavigationBloc, NavigationState>(
            listener: _stateNavigationController,
            builder: (context, state) {
              return Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(56),
                  child: ApplicationBar(
                      fullName: _fullName,
                      onPress: () => context
                          .read<HomeBloc>()
                          .add(const HomeEvent.showDialogLogout())),
                ),
                body: state.map(
                  initial: (value) => const TodayScreen(),
                  home: (value) => const TodayScreen(),
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
