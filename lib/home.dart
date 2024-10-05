import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package
import 'package:climateshift/videos.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // Function to launch the Google Drive link
  Future<void> _launchDrive() async {
  final Uri driveUrl = Uri.parse('https://drive.google.com/drive/folders/11gMm5igYGKUDACruGq1oMOwPg_rXcmfU?usp=sharing');
  
  if (await canLaunchUrl(driveUrl)) {
    await launchUrl(
      driveUrl,
      mode: LaunchMode.externalApplication,  // Specify external mode to open in browser
    );
  } else {
    throw 'Could not launch $driveUrl';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(
            "Climate Shifts",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 11, 60, 84),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Click below for the classes",
                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text("Watch Videos", style: TextStyle(color: Colors.white)),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Click below for the Notes",
                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: _launchDrive, // Call the function to launch the Drive link
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 11, 60, 84),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text("Download Notes", style: TextStyle(color: Colors.white)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 37, 40),
    );
  }
}
