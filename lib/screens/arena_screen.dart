import 'package:flutter/material.dart';

import 'master_layout.dart';

class ArenaScreen extends StatelessWidget {
  const ArenaScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return MasterLayout(
      title: 'Arena Screen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Welcome to Arena Leaderboards!',
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