import 'package:flutter/material.dart';

class CaptureScreen extends StatelessWidget {
  const CaptureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.camera_alt, size: 80),
            const SizedBox(height: 16),
            const Text('Take a picture of your receipt or coupon'),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: implement camera capture
              },
              icon: const Icon(Icons.camera),
              label: const Text('Open Camera'),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () {
                // TODO: implement image picker
              },
              icon: const Icon(Icons.upload_file),
              label: const Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
