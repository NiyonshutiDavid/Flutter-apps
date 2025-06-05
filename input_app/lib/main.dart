import 'package:flutter/material.dart';
import 'output_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFormUI(),
    );
  }
}

class MyFormUI extends StatelessWidget {
  final _usernameController = TextEditingController();

   MyFormUI({super.key});

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
            Row(
              children: [
                const Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 222, 202, 202),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Password
            Row(
              children: [
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 222, 202, 202),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Sex
            Row(
              children: [
                const Text(
                  'Sex',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 80),
                Row(
                  children: [
                    Radio(value: true, groupValue: true, onChanged: (value){}),
                    Text('Male'),
                    SizedBox(width: 16),
                    Radio(value: false, groupValue: true, onChanged: (value){}),
                    Text('Female'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Courses
            const Text(
              'Courses',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value){},
              title: const Text('Machine Learning'),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.deepPurple,
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value){},
              title: const Text('Full stack'),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.deepPurple,
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value){},
              title: const Text('Mobile application'),
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
              onChanged: (value) {},
              activeColor: Colors.green,
              inactiveColor: Colors.grey.shade300,
            ),

            SizedBox(height: 20),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context,) => OutputScreen(username: [_usernameController.text])),
                    
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Messages can be cleared after clicking Clear button'),
                        duration: const Duration(seconds: 2),
                        backgroundColor: const Color.fromARGB(255, 197, 138, 83),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text(
                    'Clear',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//output screen.dart
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
