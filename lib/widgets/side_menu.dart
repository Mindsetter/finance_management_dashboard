import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'side_menu_list.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                  child: Row(
                    children: [
                      Switch(value: true, onChanged: (value) {}),
                      const Text(
                        'CloudFinance',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  'MENU',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                DrawerListTile(
                  title: 'Overview',
                  icon: CupertinoIcons.cube_box,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Statistics',
                  icon: CupertinoIcons.chart_bar_alt_fill,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Savings',
                  icon: Icons.wallet,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Portfolio',
                  icon: CupertinoIcons.chart_pie,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Messages',
                  icon: CupertinoIcons.envelope,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Transactions',
                  icon: CupertinoIcons.money_dollar,
                  press: () {},
                ),
                const SizedBox(height: 40),
                const Text(
                  'GENERAL',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                DrawerListTile(
                  title: 'Settings',
                  icon: CupertinoIcons.settings,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Appearance',
                  icon: CupertinoIcons.app_badge,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Need Help?',
                  icon: CupertinoIcons.info,
                  press: () {},
                ),
                const SizedBox(height: 30),
                DrawerListTile(
                  title: 'Log Out',
                  color: Colors.black,
                  icon: Icons.logout_rounded,
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
