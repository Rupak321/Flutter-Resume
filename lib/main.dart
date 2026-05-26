import 'package:flutter/material.dart';
import 'styles.dart';

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
                  Image.asset('assets/images/img1.jpeg', width: 200, height: 200, fit: BoxFit.cover),                
                
                ],
              ),
            ),
          ),
        
      ),
    );
  }
}