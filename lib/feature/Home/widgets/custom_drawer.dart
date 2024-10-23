import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blue.shade700,
                      Colors.blue.shade300,
                      Colors.blue.shade700,
                    ]),
              ),
              height: 100,
              child: Center(
                child: Text(
                  'برکت',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('حساب کاربری'),
              onTap: () {
                // Navigate to profile page
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text('سبد خرید'),
              onTap: () {
                // Navigate to basket page
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('تنظیمات'),
              onTap: () {
                // Navigate to setting page
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: const Icon(Icons.contact_support),
              title: const Text(' ارتباط با ما'),
              onTap: () {
                // Navigate to contact us page
              },
            ),
          ],
        ),
      ),
    );
  }
}
