import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Your Name')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      firstName: _firstNameController.text,
                      lastName: _lastNameController.text,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
