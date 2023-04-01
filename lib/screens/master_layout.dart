import 'package:flutter/material.dart';

import 'package:handy_wow/screens/home_screen.dart';
import 'package:handy_wow/screens/arena_screen.dart';
import 'package:handy_wow/screens/mythic_plus_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MasterLayout(
        title: 'Home',
        body: HomeScreen(),
      ),
      routes: {
        '/home': (context) => const MasterLayout(
          title: 'Home',
          body: HomeScreen(),
        ),
        '/arena': (context) => const MasterLayout(
            title: 'Arena',
            body: ArenaScreen(),
        ),
        '/mythic_plus': (context) => const MasterLayout(
          title: 'Mythic Plus',
          body: MythicPlusScreen(),
        ),
      },
    );
  }
}

class MasterLayout extends StatelessWidget
{
  final String title;
  final Widget body;

  const MasterLayout({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('lib/assets/images/placeholder.jpg'), // replace with your image file path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.7),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: body,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home),
                      Text('Home'),
                    ],
                  ),
              ),
              TextButton(onPressed: () {
                Navigator.pushNamed(context, '/arena');
              },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.sports_hockey),
                    Text('Arena'),
                  ],
                ),
              ),
              TextButton(onPressed: () {
                Navigator.pushNamed(context, '/mythic+');
              },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.local_fire_department),
                    Text('Mythic+'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}