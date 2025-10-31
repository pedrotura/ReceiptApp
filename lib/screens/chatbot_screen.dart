import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.chat_bubble_outline, size: 80),
            const SizedBox(height: 16),
            Text('Finance Chatbot', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            const Text('Ask questions about your spending, receipts, or taxes.'),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: null, // To be implemented
              icon: const Icon(Icons.lock),
              label: const Text('Coming soon'),
            ),
          ],
        ),
      ),
    );
  }
}
