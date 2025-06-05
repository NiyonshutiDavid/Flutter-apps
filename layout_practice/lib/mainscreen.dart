import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyFormUI(),
    );
  }
}

class MyFormUI extends StatelessWidget {
  const MyFormUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome Back!!!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 180, 179, 179),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Username
            const Text(
              'Username',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 222, 202, 202),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Password
            const Text(
              'Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 222, 202, 202),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 16),

            // Sex
            const Text(
              'Sex',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: const [
                Radio(value: true, groupValue: true, onChanged: null),
                Text('Male'),
                SizedBox(width: 16),
                Radio(value: false, groupValue: true, onChanged: null),
                Text('Female'),
              ],
            ),
            const SizedBox(height: 8),

            // Courses
            const Text(
              'Courses',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const CheckboxListTile(
              value: true,
              onChanged: null,
              title: Text('Machine Learning'),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.deepPurple,
            ),
            const CheckboxListTile(
              value: true,
              onChanged: null,
              title: Text('Full stack'),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.deepPurple,
            ),
            const CheckboxListTile(
              value: false,
              onChanged: null,
              title: Text('Mobile application'),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.deepPurple,
            ),
            const SizedBox(height: 12),

            // Tuition
            const Text(
              'Tuition',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: 20,
              min: 0,
              max: 100,
              onChanged: null,
              activeColor: Colors.green,
              inactiveColor: Colors.grey.shade300,
            ),

            const SizedBox(height: 12),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  child: const Text('Submit'),
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Clear'),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Snackbar simulation
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                'Submitted successful 🥳🥳🥳',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
