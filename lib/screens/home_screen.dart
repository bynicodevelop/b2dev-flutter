import 'package:flutter/material.dart';
import 'package:test_flutter/screens/list_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> users;

  const HomeScreen({
    Key? key,
    required this.users,
  }) : super(key: key);

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
                      builder: (context) => ListScreen(
                        users: users,
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
