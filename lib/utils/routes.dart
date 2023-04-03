import 'package:flutter/material.dart';

import 'package:handy_wow/screens/home_screen.dart';
import 'package:handy_wow/screens/arena_screen.dart';
import 'package:handy_wow/screens/mythic_plus_screen.dart';

class Routes {
  static const String home = '/';
  static const String arena = '/arena';
  static const String mythicPlus = 'mythic-plus';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case arena:
        return MaterialPageRoute(builder: (_) => const ArenaScreen());
      case mythicPlus:
        return MaterialPageRoute(builder: (_) => const MythicPlusScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
          child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}