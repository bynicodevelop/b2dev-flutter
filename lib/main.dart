import 'package:flutter/material.dart';
import 'package:test_flutter/screens/home_screen.dart';

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

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(
        users: userList,
      ),
    );
  }
}
