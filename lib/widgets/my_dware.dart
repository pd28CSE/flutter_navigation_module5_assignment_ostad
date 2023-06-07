import 'package:flutter/material.dart';

import '../screens/first_screen.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';

class MyDware extends StatelessWidget {
  const MyDware({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Screen Navigation Menu'),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (cntxt) {
                  return const FirstScreen();
                },
              ));
            },
            title: const Text('Home'),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (cntxt) {
                  return const SecondScreen();
                },
              ));
            },
            title: const Text('Chat'),
            leading: const Icon(Icons.chat),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (cntxt) {
                  return const ThirdScreen();
                },
              ));
            },
            title: const Text('Call'),
            leading: const Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
