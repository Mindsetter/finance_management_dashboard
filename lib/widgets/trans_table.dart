import 'package:flutter/material.dart';

import '../model/transaction_data.dart';

class TransTable extends StatelessWidget {
  const TransTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        height: 400,
        decoration: const BoxDecoration().copyWith(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Latest Transactions'),
                TextButton(onPressed: () {}, child: const Text('View All'))
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text('To/From'),
                        ],
                      ),
                    ),
                    const DataColumn(
                      label: Text('Date'),
                    ),
                    const DataColumn(
                      label: Text('Description'),
                    ),
                    const DataColumn(
                      label: Text('Amount'),
                    ),
                    const DataColumn(
                      label: Text('Status'),
                    ),
                    const DataColumn(
                      label: Text('Action'),
                    ),
                  ],
                  rows: List.generate(transactionDetails.length,
                      (index) => transData(transactionDetails[index])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DataRow transData(TransactionData transactionInfo) {
  const TextStyle greenColor = TextStyle(color: Colors.green);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            Icon(transactionInfo.icon),
            const SizedBox(width: 10),
            Text(transactionInfo.name),
          ],
        ),
      ),
      DataCell(
        Text(
          transactionInfo.date,
        ),
      ),
      DataCell(
        Text(
          transactionInfo.description,
        ),
      ),
      DataCell(
        Text(transactionInfo.amount, style: greenColor),
      ),
      DataCell(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          decoration: const BoxDecoration().copyWith(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.green),
          ),
          child: Text(
            transactionInfo.status,
            style: greenColor,
          ),
        ),
      ),
      DataCell(Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.link),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      )),
    ],
  );
}
