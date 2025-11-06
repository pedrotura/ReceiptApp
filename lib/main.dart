import 'package:flutter/material.dart';
import 'common/utils.dart';
import 'pages/home_page.dart';
import 'pages/add_receipt_page.dart';
import 'pages/receipts_page.dart';
import 'pages/chatbot_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipt AI',
      theme: darkTheme,
      home: const ReceiptAppRoot(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ReceiptAppRoot extends StatefulWidget {
  const ReceiptAppRoot({super.key});

  @override
  State<ReceiptAppRoot> createState() => _ReceiptAppRootState();
}

class _ReceiptAppRootState extends State<ReceiptAppRoot> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      const HomePage(),
      const AddReceiptPage(),
      const ReceiptsPage(),
      const ChatbotPage(),
    ];

    return Scaffold(
      body: SafeArea(child: pages[_selectedIndex]),
      bottomNavigationBar: NavigationBar(
        backgroundColor: brandDarkColor,
        indicatorColor: brandYellowColor,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onTabSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.camera_alt), label: 'Add'),
          NavigationDestination(icon: Icon(Icons.receipt_long), label: 'Receipts'),
          NavigationDestination(icon: Icon(Icons.chat_bubble), label: 'Chat'),
        ],
      ),
    );
  }
}
