import 'package:flutter/material.dart';
import '../common/utils.dart';

class ChatbotPage extends StatelessWidget {
  const ChatbotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chatbot (placeholder)', style: titleStyle)),
      body: Column(
        children: [
          Expanded(
            child: Center(child: Text('Chat will appear here. Ask about your receipts.', style: bodyStyle)),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      enabled: false,
                      style: bodyStyle,
                      decoration: InputDecoration(hintText: 'Ask the assistant about your receipts...'),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.send), onPressed: null),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
