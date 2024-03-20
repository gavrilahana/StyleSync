import 'package:flutter/material.dart';
import 'custom.dart';
import 'sidebar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Sidebar(), // Gunakan Sidebar di sini
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Home Screen!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman custom ketika tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomScreen()),
                );
              },
              child: Text('Go to Custom Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
