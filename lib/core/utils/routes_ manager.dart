import 'package:flutter/material.dart';
import 'package:todo_app_c12_online_sat/presentation/screens/home/home_screen.dart';

class RoutesManager {
  static const String homeRoute = '/home';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }
}
