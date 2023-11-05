import 'package:flutter/material.dart';

class OverviewData {
  final IconData icon, arrow;
  final String title, percentChanges, amountChanges;
  final double total;

  OverviewData({
    required this.arrow,
    required this.percentChanges,
    required this.amountChanges,
    required this.icon,
    required this.title,
    required this.total,
  });
}

List<OverviewData> overviewDetails = [
  OverviewData(
    icon: Icons.currency_exchange_sharp,
    title: 'Earnings',
    total: 928.41,
    arrow: Icons.arrow_upward,
    percentChanges: '12.0%',
    amountChanges: '+\$118.8',
  ),
  OverviewData(
    icon: Icons.shopping_cart,
    title: 'Spendings',
    total: 169.43,
    arrow: Icons.arrow_downward,
    percentChanges: '3.1%',
    amountChanges: '-\$5.2',
  ),
  OverviewData(
    icon: Icons.savings,
    title: 'Savings',
    total: 406.27,
    arrow: Icons.arrow_upward,
    percentChanges: '8.2%',
    amountChanges: '+\$33.3',
  ),
  OverviewData(
    icon: Icons.stacked_bar_chart,
    title: 'Investment',
    total: 1854.08,
    arrow: Icons.arrow_upward,
    percentChanges: '9.2%',
    amountChanges: '+\$78.5',
  ),
];
