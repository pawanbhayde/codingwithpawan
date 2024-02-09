import 'package:coffeeapp/pages/homepage.dart';
import 'package:flutter/material.dart';

class UserNavigation extends StatefulWidget {
  const UserNavigation({Key? key}) : super(key: key);

  @override
  State<UserNavigation> createState() => _UserNavigationState();
}

class _UserNavigationState extends State<UserNavigation> {
  int selectedPage = 0;
  final List<Widget> pages = [
    const HomePage(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C110F),
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPage,
          fixedColor: const Color(0xFFE4CF9A),
          unselectedItemColor: const Color(0xFFE4CF9A).withOpacity(0.5),
          backgroundColor: const Color(0xff1C110F),
          onTap: (position) {
            setState(() {
              selectedPage = position;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), label: "Inbox"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grading_rounded), label: "Inbox"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Inbox"),
          ]),
    );
  }
}
