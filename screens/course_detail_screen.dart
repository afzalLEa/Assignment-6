import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  final String title;

  CourseDetailScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Course Description"),
            Text("Introduction to $title"),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.play_circle_fill),
              label: Text("Start Course"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
