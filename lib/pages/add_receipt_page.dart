import 'package:flutter/material.dart';
import '../common/utils.dart';

class AddReceiptPage extends StatelessWidget {
  const AddReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Receipt', style: titleStyle)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.add_a_photo, size: 48, color: brandYellowColor),
              const SizedBox(height: 16),
              Text('Insert images of receipts and the app will analyze them (placeholder).', style: bodyStyle),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: null,
                icon: const Icon(Icons.add_a_photo),
                label: Text('Insert Image', style: buttonStyle),
                style: ElevatedButton.styleFrom(
                  backgroundColor: brandYellowColor,
                  foregroundColor: brandDarkColor,
                  textStyle: buttonStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
