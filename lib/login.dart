import 'package:flutter/material.dart';
import 'sidebar.dart'; // Impor file sidebar.dart

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      drawer: Sidebar(), // Gunakan Sidebar di sini
      body: Center(
        child: Text(
          'This is the Login Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
