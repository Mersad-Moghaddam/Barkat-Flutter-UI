import 'package:flutter/material.dart';

class CustomBNB extends StatefulWidget {
  const CustomBNB({
    super.key,
  });

  @override
  State<CustomBNB> createState() => _CustomBNBState();
}

class _CustomBNBState extends State<CustomBNB> {
  int _currentIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
      mouseCursor: SystemMouseCursors.click,
      elevation: 0,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'باشگاه مشتریان',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.discount_outlined),
          label: 'تخفیفات',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket_outlined),
          label: 'سفارش ها',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'خانه',
        ),
      ],
    );
  }
}
