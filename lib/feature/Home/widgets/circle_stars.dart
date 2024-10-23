import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleWithStars extends StatelessWidget {
  const CircleWithStars({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showCupertinoDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text(
                  'پروفایل حساب کاربری',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: const Text(
                  'مرصاد مقدم\nسطح اهراز هویت ۱',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                actions: [
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue.shade400,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'باشه',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            });
      },
      child: Container(
        width: 80,
        height: 80,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image:
                AssetImage('assets/mersad.png'), // replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: const Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(CupertinoIcons.star, color: Colors.orange, size: 16),
                  Icon(CupertinoIcons.star, color: Colors.orange, size: 16),
                  Icon(CupertinoIcons.star, color: Colors.orange, size: 16),
                  Icon(CupertinoIcons.star_fill,
                      color: Colors.orange, size: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
