import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String username;
  final String password;

  const SecondScreen({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Output Screen"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Text('Your names: ${widget.username}'),
            Text("Your password: ${widget.password}"),
          ],
        ),
      ),
    );
  }
}
