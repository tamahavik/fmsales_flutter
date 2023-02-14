import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';
import 'package:ufi/presentation/home/components/history_screen.dart';
import 'package:ufi/presentation/home/components/home_screen.dart';
import 'package:ufi/screen/verification_screen.dart';

class HomeNavigationScreen extends StatefulWidget {
  const HomeNavigationScreen({super.key});

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  int _currentIndex = BottomAppBarEnums.home.value;
  late Map<int, Widget> _screen;

  void _onItemTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  void initState() {
    _screen = {
      BottomAppBarEnums.home.value: const HomeScreen(),
      BottomAppBarEnums.history.value: const HistoryScreen(),
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: const Text('TAMAMI'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: _screen[_currentIndex],
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        spacing: 10,
        children: [
          SpeedDialChild(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const VerificationScreen(),
              ));
            },
            child: const Icon(
              Icons.article_outlined,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue[600],
          ),
          SpeedDialChild(
            visible: _currentIndex == BottomAppBarEnums.home.value,
            onTap: () {},
            backgroundColor: Colors.blue[600],
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                onPressed: () {
                  _onItemTap(BottomAppBarEnums.home.value);
                },
                icon: const Icon(Icons.home),
                color: _currentIndex == BottomAppBarEnums.home.value
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
                onPressed: () {
                  _onItemTap(BottomAppBarEnums.history.value);
                },
                icon: const Icon(Icons.history),
                color: _currentIndex == BottomAppBarEnums.history.value
                    ? Colors.white
                    : Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
