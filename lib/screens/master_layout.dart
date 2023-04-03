import 'package:flutter/material.dart';

import 'package:handy_wow/utils/routes.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme
          .of(context)
          .primaryColor,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
          ),
          IconButton(
            icon: const Icon(Icons.emoji_events),
            onPressed: () {
              Navigator.pushNamed(context, Routes.arena);
            },
          ),
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {
              Navigator.pushNamed(context, Routes.mythicPlus);
            },
          ),
        ],
      ),
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
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
