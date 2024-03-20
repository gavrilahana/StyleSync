import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Screen'),
      ),
      body: Center(
        child: Text(
          'This is the Custom Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
