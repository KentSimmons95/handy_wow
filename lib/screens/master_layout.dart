import 'package:flutter/material.dart';

class master_layout extends StatelessWidget
{
  final Widget body;

  master_layout({required this.body});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: body,
      ),
    );
  }
}