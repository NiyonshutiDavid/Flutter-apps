import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final List<String> username;

  const OutputScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Output Screen')),
      body: ListView.builder(
        itemCount: username.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(username[index]));
        },
      ),
    );
  }
}
