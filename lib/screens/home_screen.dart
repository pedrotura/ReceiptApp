import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back!',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Quick actions',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _QuickAction(
                icon: Icons.camera_alt,
                label: 'Scan receipt',
              ),
              _QuickAction(
                icon: Icons.upload_file,
                label: 'Upload image',
              ),
              _QuickAction(
                icon: Icons.pie_chart_outline,
                label: 'View reports',
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Recent uploads',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: const Icon(Icons.receipt_long),
                  title: Text('Receipt #${index + 1}'),
                  subtitle: const Text('Tap to view details'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  const _QuickAction({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // TODO: wire to navigation
        },
        child: Column(
          children: [
            CircleAvatar(
              radius: 28,
              child: Icon(icon, size: 28),
            ),
            const SizedBox(height: 8),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
