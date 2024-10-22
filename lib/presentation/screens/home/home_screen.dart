import 'package:flutter/material.dart';
import 'package:todo_app_c12_online_sat/core/utils/colors_manager.dart';
import 'package:todo_app_c12_online_sat/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:todo_app_c12_online_sat/presentation/screens/home/tabs/tasks_tab/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    TasksTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFab(),
      bottomNavigationBar: buildBottomNavBar(),
      body: tabs[currentIndex],
    );
  }

  Widget buildBottomNavBar() => ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomAppBar(
          notchMargin: 8,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (tappedIndex) {
                currentIndex = tappedIndex;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tasks'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined), label: 'Settings'),
              ]),
        ),
      );

  Widget buildFab() => FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      );
}
