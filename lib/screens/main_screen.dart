import 'package:finance_management_dashboard/screens/dashbord.dart';
import 'package:finance_management_dashboard/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: DashBoard(),
            ),
          ],
        ),
      ),
    );
  }
}
