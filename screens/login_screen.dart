import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock, size: 100, color: Colors.white),
              SizedBox(height: 20),
              Text("Welcome Back!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("Login to continue", style: TextStyle(color: Colors.white70)),
              SizedBox(height: 20),
              TextField(controller: emailController, decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email))),
              TextField(controller: passwordController, obscureText: true, decoration: InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.lock))),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => DashboardScreen()));
                },
                child: Text("Login"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
                },
                child: Text("Don't have an account? Sign up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
