import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  // Function to launch YouTube video URLs
  Future<void> _launchYouTube(String url) async {
    final Uri uri = Uri.parse(url); // Parse the provided URL
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Text(
            "Climate Shifts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 11, 60, 84),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Text(
                "Watch these videos of climate change:",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
             // climate issues
             const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "1. What is climate change?",
                style: TextStyle(color: Colors.white,
                fontSize: 15,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => _launchYouTube('https://youtu.be/EuwMB1Dal-4?si=WBKcT4zEwN_vKFLm'),
              child: const Text(
                "Watch Here",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            // SDGs Goals
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "2. What are the Sustainable Development Goals (SDGs)?",
                style: TextStyle(color: Colors.white,
                fontSize: 15,),
              ),
            ),
            ElevatedButton(
              onPressed: () => _launchYouTube('https://youtu.be/7dzFbP2AgFo?si=gU6v-7EaEjkWKPAZ'),
              child: const Text(
                "Watch Here",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
        
            // Deforestation
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "3. How does deforestation occur, and how can we prevent it?",
                style: TextStyle(color: Colors.white,
                fontSize: 15,),
              ),
            ),
            ElevatedButton(
              onPressed: () => _launchYouTube('https://youtu.be/-01T9e6VDWU?si=rpPVfp6P6TzH7-QC'),
              child: const Text(
                "Watch Here",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
        
            // Air Pollution
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "4. How does air pollution occur, and how can we prevent it?",
                style: TextStyle(color: Colors.white,
                fontSize: 15,),
              ),
            ),
            ElevatedButton(
              onPressed: () => _launchYouTube('https://youtu.be/6IKaUTYWtvg?si=j-5DrldxBB3qJjiJ'),
              child: const Text(
                "Watch Here",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
        
            // Ice Melting
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "5. How does ice melt due to climate change?",
                style: TextStyle(color: Colors.white,
                fontSize: 15,),
              ),
            ),
            ElevatedButton(
              onPressed: () => _launchYouTube('https://youtu.be/D8vJsjsPW-M?si=-gz7poebtEMA8b-V'),
              child: const Text(
                "Watch Here",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
        
            // Climate Change Knowledge
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "6. How do scientists know about climate change?",
                style: TextStyle(color: Colors.white,
                fontSize: 15,),
              ),
            ),
            ElevatedButton(
              onPressed: () => _launchYouTube('https://youtu.be/Bxd8y03zETI?si=7Ptvz14re7iXHZxi'),
              child: const Text(
                "Watch Here",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
        
            const SizedBox(height: 20), // Add some spacing
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 37, 40),
    );
  }
}
