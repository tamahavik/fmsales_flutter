import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ufi/screen/history_screen.dart';
import 'package:ufi/screen/home_screen.dart';
import 'package:ufi/screen/verification_screen.dart';

import '../enums/bottom_appbar_enum.dart';

class HomeNavigationScreen extends StatefulWidget {
  const HomeNavigationScreen({super.key});

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  BottomAppBarEnums _currentIndex = BottomAppBarEnums.home;
  late Map<BottomAppBarEnums, Widget> _screen;

  void _onItemTap(BottomAppBarEnums value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  void initState() {
    _screen = {
      BottomAppBarEnums.home: HomeScreen(),
      BottomAppBarEnums.history: HistoryScreen(),
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text('TAMAMI'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
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
            child: Icon(
              Icons.article_outlined,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue[600],
          ),
          SpeedDialChild(
            visible: _currentIndex == BottomAppBarEnums.home,
            onTap: () {},
            backgroundColor: Colors.blue[600],
            child: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[600],
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  _onItemTap(BottomAppBarEnums.home);
                },
                icon: Icon(Icons.home),
                color: _currentIndex == BottomAppBarEnums.home
                    ? Colors.white
                    : Colors.grey[800],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  _onItemTap(BottomAppBarEnums.history);
                },
                icon: Icon(Icons.history),
                color: _currentIndex == BottomAppBarEnums.history
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
