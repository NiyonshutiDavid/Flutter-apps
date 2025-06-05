import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String firstName;
  final String lastName;

  const SecondScreen({required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Names')),
      body: Center(
        child: Text(
          'Hello, $firstName $lastName!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
