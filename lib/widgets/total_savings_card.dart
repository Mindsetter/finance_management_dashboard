import 'package:flutter/material.dart';

class TotalSavingsCard extends StatelessWidget {
  const TotalSavingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: const BoxDecoration().copyWith(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            horizontalTitleGap: 0,
            title: const Text(
              'Total Savings',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                const Text(
                  '\$406.27',
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 0, 32),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: Icons.arrow_upward == Icons.arrow_downward
                      ? Colors.red
                      : Colors.green.shade50,
                  avatar: Icon(
                    Icons.arrow_upward,
                    color: Icons.arrow_upward == Icons.arrow_downward
                        ? Colors.white
                        : Colors.green,
                  ),
                  label: Text(
                    '8.2%',
                    style: TextStyle(
                        color: Icons.arrow_upward == Icons.arrow_downward
                            ? Colors.white
                            : Colors.green),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Text(
                  '+\$33.33',
                  style: TextStyle(
                      color: Icons.arrow_upward == Icons.arrow_downward
                          ? Colors.red
                          : Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                const Text(
                  'than last month',
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
