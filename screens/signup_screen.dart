import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class SignUpScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Icon(Icons.person_add, size: 100, color: Colors.white),
                Text("Create Account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text("Sign up to get started", style: TextStyle(color: Colors.white70)),
                SizedBox(height: 20),
                TextField(controller: nameController, decoration: InputDecoration(labelText: "Full Name", prefixIcon: Icon(Icons.person))),
                TextField(controller: emailController, decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email))),
                TextField(controller: passwordController, obscureText: true, decoration: InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.lock))),
                TextField(controller: confirmPasswordController, obscureText: true, decoration: InputDecoration(labelText: "Confirm Password", prefixIcon: Icon(Icons.lock))),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DashboardScreen()));
                  },
                  child: Text("Sign Up"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Already have an account? Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
