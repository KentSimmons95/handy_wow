import 'package:flutter/material.dart';

import 'master_layout.dart';

class MythicPlusScreen extends StatelessWidget {
  const MythicPlusScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return MasterLayout(
      title: 'Mythic Plus Screen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Welcome to Mythic Plus Leaderboards!',
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