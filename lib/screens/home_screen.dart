import 'package:flutter/material.dart';

import 'master_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return MasterLayout(
      title: 'Home Screen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Welcome to my WoW App!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16)
        ],
      ),
    );
  }
}