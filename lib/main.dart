import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home_screen.dart';
import 'package:learn_flutter/screens/learn_flutter_screen.dart';
import 'package:learn_flutter/screens/person_list_screen.dart';
import 'package:learn_flutter/screens/profile_screen.dart';
import 'package:learn_flutter/screens/video_screen.dart';

void main() {
  runApp(const PersonListScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const VideoScreen(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomeScreen(),
    ProfileScreen(),
    LearnFlutterScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: pages[1],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        // onDestinationSelected: (int index) {
        //   setState(() {
        //     currentPage = index;
        //   });
        // },
        // selectedIndex: currentPage,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
