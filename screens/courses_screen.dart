import 'package:flutter/material.dart';
import 'course_detail_screen.dart';

class CoursesScreen extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {"title": "Flutter Basics", "desc": "Introduction to Flutter"},
    {"title": "Dart Language", "desc": "Learn Dart in depth"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(title: Text("Courses")),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.book),
            title: Text(courses[index]['title']!),
            subtitle: Text(courses[index]['desc']!),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CourseDetailScreen(title: courses[index]['title']!)),
              );
            },
          );
        },
      ),
    );
  }
}
