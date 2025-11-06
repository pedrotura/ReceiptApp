import 'package:flutter/material.dart';
import '../common/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Receipt AI — Home', style: titleStyle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome', style: titleStyle),
            const SizedBox(height: 8),
            Text('Quick overview of your receipts and trends.', style: bodyStyle),
            const SizedBox(height: 16),
            Row(
              children: const [
                Expanded(
                  child: _StatCard(
                    title: 'Receipts',
                    value: '-',
                    color: brandYellowColor,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: _StatCard(
                    title: 'Total Revenue',
                    value: '-',
                    color: brandYellowColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text('Recent receipts', style: subtitleStyle),
            const SizedBox(height: 8),
            Expanded(
              child: Center(child: Text('No receipts yet. Use Add to insert one.', style: bodyStyle)),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const _StatCard({Key? key, required this.title, required this.value, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: color.withOpacity(0.15), borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: subtitleStyle.copyWith(color: brandYellowColor)),
          const SizedBox(height: 8),
          Text(value, style: titleStyle.copyWith(fontSize: 22, color: baseWhiteColor)),
        ],
      ),
    );
  }
}
