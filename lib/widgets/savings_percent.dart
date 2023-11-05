import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constants/dash_colors.dart';

class IndicatorCard extends StatelessWidget {
  final String title;
  final double amountUsed;
  final double amount;
  final double percent;

  const IndicatorCard({
    super.key,
    required this.title,
    required this.amountUsed,
    required this.amount,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text('\$$amountUsed/'),
                    Text(
                      '\$$amount',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            LinearPercentIndicator(
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
              ),
              lineHeight: 14.0,
              percent: percent,
              backgroundColor: DashColors.bgColor,
              progressColor: Colors.blue,
              barRadius: const Radius.circular(8),
            ),
          ],
        ),
      ),
    );
  }
}
