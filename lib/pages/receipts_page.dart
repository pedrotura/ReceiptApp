import 'package:flutter/material.dart';
import '../common/utils.dart';

class ReceiptsPage extends StatelessWidget {
  const ReceiptsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Receipts', style: titleStyle)),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              color: baseBlackColor,
              child: ListTile(
                title: Text('Total revenue', style: subtitleStyle),
                trailing: Text('-', style: titleStyle.copyWith(fontSize: 20)),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Center(child: Text('No receipts yet', style: bodyStyle)),
            ),
          ],
        ),
      ),
    );
  }
}
