import 'package:flutter/material.dart';
import 'package:portfolioapp/widgets/project_card.dart'; // Import the ProjectCard widget

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Introduction Section
            Text(
              'Hello, I\'m Miroslav',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              ' Data Scientist | Mobile App Enthusiast',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),

            // Skills Section
            Text(
              'Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // You can use a Row, Wrap, or other widgets to display your skills
            Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Python')),
                // Add more skills as needed
              ],
            ),
            SizedBox(height: 16),

            // Featured Projects Section
            Text(
              'Featured Projects',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ProjectCard(
              title: 'ETH Transaction crawler',
              description: 'Created a web crawler using Python and HTML...',
              imageUrl: 'assets/images/project1.png',
              githubUrl:
                  'https://github.com/your-username/eth-transaction-crawler',
              onTap: () {},
            ),
            ProjectCard(
              title: 'Tumor genome clustering',
              description:
                  'Created an unsupervised learning algorithm to separate...',
              imageUrl: 'assets/images/project2.png',
              githubUrl:
                  'https://github.com/your-username/tumor-genome-clustering',
              onTap: () {},
            ),
            // Add more project cards as needed
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
  final String githubUrl;
  final VoidCallback onTap;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.githubUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
