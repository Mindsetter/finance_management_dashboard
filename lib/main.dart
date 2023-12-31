import 'package:finance_management_dashboard/constants/dash_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers.dart/menu_controller.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppMenuController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Finance Management Dashboard',
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: DashColors.primaryColor,
          ),
          scaffoldBackgroundColor: DashColors.bgColor,
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
