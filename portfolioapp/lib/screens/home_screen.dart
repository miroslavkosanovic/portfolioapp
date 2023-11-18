import 'package:flutter/material.dart';
import 'package:portfolioapp/widgets/project_card.dart';
import 'package:portfolioapp/screens/experience_screen.dart';
// Import the ProjectCard widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center content
          children: [
            // Add the Image and center it
            Center(
              child: Image.asset(
                'lib/assets/images/personalPicture.png',
                height: 150,
              ),
            ),
            // Introduction Section
            const SizedBox(
                height: 16), // Add some space between the image and text
            const Text(
              'Hello, I\'m Miroslav, a motivated junior app developer with experience in Flutter and Dart for mobile application development. Proficient in leveraging these technologies to create engaging and functional apps. Skilled in building efficient data flows within applications and passionate about utilizing technology to address real-world challenges. Excellent communication skills in English, both written and verbal.',
              style: TextStyle(
                fontSize: 20, // Decrease font size
                // Remove FontWeight.bold to make it not bold
              ),
              textAlign: TextAlign.center, // Center text
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

            // Skills Section
            const Text(
              'Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // You can use a Row, Wrap, or other widgets to display your skills
            const Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Python')),
                // Add more skills as needed
              ],
            ),
            const SizedBox(height: 16),

            // Featured Projects Section
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
              description: 'Created a web crawler using Python and HTML...',
              imageUrl: 'lib/assets/images/project1.png',
              githubUrl:
                  'https://github.com/your-username/eth-transaction-crawler',
              onTap: () {},
            ),
            ProjectCard(
              title: 'Tumor genome clustering',
              description:
                  'Created an unsupervised learning algorithm to separate...',
              imageUrl: 'lib/assets/images/project2.png',
              githubUrl:
                  'https://github.com/your-username/tumor-genome-clustering',
              onTap: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExperienceScreen()),
                );
              },
              child: const Text('View Experience'),
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
    super.key,
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
      ),
    );
  }
}
