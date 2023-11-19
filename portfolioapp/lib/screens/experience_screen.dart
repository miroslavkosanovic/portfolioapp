// experience_screen.dart
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Work Experience',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Add your work experience details here
            const Text(
              'NIS a.d. - RPA Developer\nOct 2021 - Feb 2022,',
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press to show certificate image
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CertificateScreen(),
                  ),
                );
              },
              child: const Text('View Certificate'),
            ),
            const Divider(),
            const Text(
              'Education',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Add your education details here
            const Text(
              'Faculty of Technical Science in Novi Sad - Student of Informational Engineering\nFinal year',
              style: TextStyle(fontSize: 16),
            ),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificate'),
      ),
      body: Center(
        child: Image.asset(
          'lib/assets/images/certificate.png', // Adjust the path based on your actual file name and extension
          height: 300, // Adjust the height as needed
        ),
      ),
    );
  }
}
