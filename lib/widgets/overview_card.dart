import 'package:flutter/material.dart';

import '../model/overview_data.dart';

class OverviewCard extends StatelessWidget {
  final OverviewData overviewInfo;

  const OverviewCard({
    super.key,
    required this.overviewInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration().copyWith(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(
              overviewInfo.icon,
              size: 18,
              color: Colors.grey,
            ),
            title: Text(
              overviewInfo.title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  '\$${overviewInfo.total}',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 13, 0, 32),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 6,
                ),
                // if (!Responsive.isMobile(context))
                Chip(
                  labelPadding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: overviewInfo.arrow == Icons.arrow_downward
                      ? Colors.red
                      : Colors.green.shade50,
                  avatar: Icon(
                    overviewInfo.arrow,
                    size: 12,
                    color: overviewInfo.arrow == Icons.arrow_downward
                        ? Colors.white
                        : Colors.green,
                  ),
                  label: Text(
                    overviewInfo.percentChanges,
                    style: TextStyle(
                        fontSize: 12,
                        color: overviewInfo.arrow == Icons.arrow_downward
                            ? Colors.white
                            : Colors.green),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  overviewInfo.amountChanges,
                  style: TextStyle(
                      color: overviewInfo.arrow == Icons.arrow_downward
                          ? Colors.red
                          : Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                const Text(
                  'last month',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
