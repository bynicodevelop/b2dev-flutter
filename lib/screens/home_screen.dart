import 'package:flutter/material.dart';
import 'package:test_flutter/screens/list_screen.dart';

const List<Map<String, dynamic>> userList = [
  {
    "name": "John",
    "age": 18,
    "status": "Je mange des devs tous les matin",
  },
  {
    "name": "Jane",
    "age": 32,
    "status": "J'arrose les cailloux",
  },
  {
    "name": "Bob",
    "age": 190,
    "status": "Dit l'ane",
  }
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma super app"),
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text("2"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  child: const Text("Go to second screen"),
                  // onPressed: () => Navigator.pushAndRemoveUntil(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListScreen(
                        users: userList,
                      ),
                    ),
                    // (route) => false,
                  ),
                ),
              ),
            ),
            const Text("hello les devs"),
            const Text("hello les devs"),
            const Text("hello les devs"),
            const Text("hello les devs"),
            const Text("hello les devs"),
          ],
        ),
      ),
    );
  }
}
