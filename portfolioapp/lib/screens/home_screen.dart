import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:portfolioapp/widgets/project_card.dart';
import 'package:portfolioapp/screens/experience_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'lib/assets/images/personalPicture.png',
                height: 150,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hello, I\'m Miroslav, a motivated junior app developer with experience in Flutter and Dart for mobile application development. Proficient in leveraging these technologies to create engaging and functional apps. Skilled in building efficient data flows within applications and passionate about utilizing technology to address real-world challenges. Excellent communication skills in English, both written and verbal.',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Data Scientist | Mobile App Enthusiast',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Python')),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Featured Projects',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ProjectCard(
              title: 'ETH Transaction crawler',
              description:
                  'Created a web crawler using Python and HTML in order to acquire current information on blockchain and return transactions and balance on a certain date.',
              imageUrl: 'lib/assets/images/project1.png',
            ),
            ProjectCard(
              title: 'Tumor genome clustering',
              description:
                  'Created an unsupervised learning algorithm to separate different types of tumors based on their genome.',
              imageUrl: 'lib/assets/images/project2.png',
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExperienceScreen(),
                  ),
                );
              },
              child: const Text('View Experience'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Email: kosanovic.miroslav98@gmail.com'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('GitHub:miroslavkosanovic'),
                const SizedBox(width: 8),
                const Text('LinkedIn:miroslav-kosanovic'),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
