import 'package:flutter/material.dart';

import '../widgets/my_dware.dart';
import './second_screen.dart';
import 'third_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          centerTitle: true,
        ),
        drawer: const MyDware(),
        body: const TabBarView(
          children: [
            Center(child: Text('Page 1')),
            Center(child: Text('Page 2')),
            Center(child: Text('Page 3')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.green,
          splashBorderRadius: BorderRadius.circular(90),
          onTap: (value) {},
          tabs: [
            const Tab(
              text: 'Home',
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (cntxt) {
                  return const SecondScreen();
                }));
              },
              icon: const Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (cntxt) {
                  return const ThirdScreen();
                }));
              },
              icon: const Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
