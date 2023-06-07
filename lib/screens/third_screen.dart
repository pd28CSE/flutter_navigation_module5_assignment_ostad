import 'package:flutter/material.dart';

import '../widgets/my_dware.dart';
import './first_screen.dart';
import './second_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
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
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.green,
          splashBorderRadius: BorderRadius.circular(90),
          onTap: (value) {},
          tabs: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (cntxt) {
                    return const FirstScreen();
                  },
                ));
              },
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (cntxt) {
                    return const SecondScreen();
                  },
                ));
              },
              icon: const Icon(Icons.chat),
            ),
            const Tab(
              text: 'Call',
              icon: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
