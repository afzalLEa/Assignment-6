import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Column(
          children: [
            Image.network("https://via.placeholder.com/300x100.png?text=Flutter+Dashboard"),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/11.jpg"),
            ),
            Text("John Doe", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("john@example.com"),
            SizedBox(height: 20),
            Text("Courses: 12 | Badges: 5 | Rank: 23"),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
