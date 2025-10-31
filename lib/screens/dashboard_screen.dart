import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder for future graphs and analytics
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Spending Dashboard', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text('Total Spent'),
              subtitle: const Text('4B0 0.00 (this month)'),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.percent),
              title: const Text('Taxes Paid'),
              subtitle: const Text('4B0 0.00 (this month)'),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.discount),
              title: const Text('Discounts Received'),
              subtitle: const Text('4B0 0.00 (this month)'),
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Center(
              child: Text('Graphs and analytics coming soon!', style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),
        ],
      ),
    );
  }
}
