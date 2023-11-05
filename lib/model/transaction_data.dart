import 'package:flutter/material.dart';

class TransactionData {
  final IconData icon;
  final String name, date, description, amount, status;

  TransactionData({
    required this.icon,
    required this.name,
    required this.date,
    required this.description,
    required this.amount,
    required this.status,
  });
}

List<TransactionData> transactionDetails = [
  TransactionData(
    icon: Icons.face,
    name: 'Elevste Agency',
    description: 'Monthly Salary',
    date: '2 Oct 2023',
    status: 'Sucess',
    amount: '+\$1,500.00',
  ),
  TransactionData(
    icon: Icons.face,
    name: 'Elevste Agency',
    description: 'Monthly Salary',
    date: '2 Oct 2023',
    status: 'Sucess',
    amount: '+\$1,500.00',
  ),
  TransactionData(
    icon: Icons.face,
    name: 'Elevste Agency',
    description: 'Monthly Salary',
    date: '2 Oct 2023',
    status: 'Sucess',
    amount: '+\$1,500.00',
  ),
];
