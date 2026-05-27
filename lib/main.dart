import 'package:flutter/material.dart';
import 'styles.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Detaiils"),
          centerTitle: true,
        ),
        
        body: SafeArea(
          child: Card(
  elevation: 10,
  shadowColor: Colors.black45,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
          
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppStyles.profileContainer,
                  const SizedBox(height: 24),
                  const Text('Name: Rupak Pandey'),
                  const SizedBox(height: 8),
                  const Text('Address: Kathmandu, Nepal'),
                  const SizedBox(height: 8),
                  const Text('Contact: 9849324945'),
                  const SizedBox(height: 8),
                  const Text('Email: rupakpandey431@gmail.com'),
                  const SizedBox(height: 8),
                  const Text('About Me: \n Technical student and a passinate learner, seeking to explore new things in tech and lern new skills', textAlign: TextAlign.center),
                  
                  const SizedBox(height: 16),
                  ElevatedButton(
  onPressed: openWebsite,
  child: const Text('Visit My Website'),
),
                  const SizedBox(height: 16),
                  ElevatedButton(
  onPressed: opengithub,
  child: const Text('Visit My GitHub'),
),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

void openWebsite() async {
  final Uri url = Uri.parse('https://pandeyrupak.com.np');

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

void opengithub() async {
  final Uri url = Uri.parse('https://github.com/rupak321');

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}
