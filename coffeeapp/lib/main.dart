import 'package:coffeeapp/pages/homepage.dart';
import 'package:coffeeapp/pages/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFE4CF9A)),
        useMaterial3: true,
      ),
      home: const UserNavigation(),
    );
  }
}
