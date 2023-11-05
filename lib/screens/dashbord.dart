import 'package:finance_management_dashboard/model/overview_data.dart';
import 'package:finance_management_dashboard/utils/responsive.dart';
import 'package:finance_management_dashboard/widgets/header.dart';
import 'package:flutter/material.dart';

import '../widgets/overview_card.dart';
import '../widgets/savings_percent.dart';
import '../widgets/overview_bar_chart.dart';
import '../widgets/total_savings_card.dart';
import '../widgets/trans_table.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Decoration decoration = const BoxDecoration().copyWith(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Text(
                'Overview',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Responsive(
                mobile: ControlGridView(
                  childAspectRatio: size.width < 850 ? 1.3 : 1,
                  crossAxisCount: size.width < 850 ? 2 : 4,
                  mainAxisExtent: size.width < 850 ? 180 : 140,
                ),
                tablet: const ControlGridView(),
                desktop: ControlGridView(
                  childAspectRatio: size.width < 1400 ? 1.1 : 1.4,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 400,
                      decoration: decoration,
                      child: const OverviewBarChart(),
                    ),
                  ),
                ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: TotalSavings(decoration: decoration),
                  ),
              ],
            ),
            if (Responsive.isMobile(context))
              TotalSavings(decoration: decoration),
            const SingleChildScrollView(
              child: TransTable(),
            ),
          ],
        ),
      ),
    );
  }
}

class TotalSavings extends StatelessWidget {
  const TotalSavings({
    super.key,
    required this.decoration,
  });

  final Decoration decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: decoration,
        height: 400,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TotalSavingsCard(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.grey),
            ),
            IndicatorCard(
              title: 'Dream Studio',
              amountUsed: 251.9,
              amount: 750,
              percent: 0.5,
            ),
            IndicatorCard(
              title: 'Education',
              amountUsed: 150,
              amount: 200,
              percent: 0.83,
            ),
            IndicatorCard(
              title: 'Health Car',
              amountUsed: 30.8,
              amount: 150,
              percent: 0.3,
            ),
          ],
        ),
      ),
    );
  }
}

class ControlGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  final double mainAxisExtent;

  const ControlGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
    this.mainAxisExtent = 140,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: overviewDetails.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: childAspectRatio,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: (content, index) {
          return OverviewCard(overviewInfo: overviewDetails[index]);
        });
  }
}
