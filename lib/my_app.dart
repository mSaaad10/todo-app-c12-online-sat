import 'package:flutter/material.dart';
import 'package:todo_app_c12_online_sat/config/theme/app_theme.dart';
import 'package:todo_app_c12_online_sat/core/utils/routes_%20manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: RoutesManager.router,
        initialRoute: RoutesManager.homeRoute,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.light);
  }
}
