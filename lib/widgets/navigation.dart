import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: [
        itemButtom(
          icon: const Icon(Icons.home),
          label: 'Home',
        ),
        itemButtom(
          icon: const Icon(Icons.calendar_month),
          label: 'Calendar',
        ),
      ],
    );
  }

  BottomNavigationBarItem itemButtom(
      {required Icon icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: 'home',
    );
  }
}
