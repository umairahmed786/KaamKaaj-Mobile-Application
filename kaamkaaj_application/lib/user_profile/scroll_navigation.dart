import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

class Scroll_Nav extends StatelessWidget {
  const Scroll_Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollNavigation(
      bodyStyle: NavigationBodyStyle(
        background: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      barStyle: NavigationBarStyle(
        background: Colors.white,
        elevation: 0.0,
      ),
      pages: [
        Container(color: Colors.blue[100]),
        Container(color: Colors.green[100]),
        Container(color: Colors.purple[100]),
        Container(color: Colors.amber[100]),
        Container(color: Colors.deepOrange[100])
      ],
      items: const [
        ScrollNavigationItem(title: "About"),
        ScrollNavigationItem(title: "Portfolio"),
        ScrollNavigationItem(title: "About1"),
        ScrollNavigationItem(title: "Portfolio1"),
        ScrollNavigationItem(title: "About2"),
      ],
    );
  }
}
