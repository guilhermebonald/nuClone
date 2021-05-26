import 'package:flutter/material.dart';
import 'package:nubank/pages/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
    }
  }
}
