import 'package:flutter/material.dart';
import 'courses_screen.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(title: Text("Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network("https://flutter.dev/assets/homepage/carousel/slide_1-bg-7c3816222e41b181e2e1eb16113fc4d8820be12ae267cfb1900a41c295f8a2b7.jpg"),
            SizedBox(height: 20),
            Text("Welcome back,", style: TextStyle(fontSize: 18)),
            Text("John Doe 👋", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.person),
              label: Text("View Profile"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.book),
              label: Text("View Courses"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => CoursesScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
