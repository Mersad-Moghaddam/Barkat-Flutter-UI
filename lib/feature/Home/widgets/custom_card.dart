import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  const CustomCard({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(8.0),
      onTap: () {
        final scaffoldKey = GlobalKey<ScaffoldState>();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            dismissDirection: DismissDirection.vertical,
            backgroundColor: backgroundColor,
            shape: const StadiumBorder(),
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            duration: const Duration(milliseconds: 180),
            animation: kAlwaysCompleteAnimation,
            key: scaffoldKey,
            behavior: SnackBarBehavior.fixed,
            content: Center(
                child: Text(
              'صفحه $title ',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        );
        scaffoldKey.currentState?.openDrawer();
      },
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            //padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 32.0,
                ),
                //const SizedBox(width: 16.0),
              ],
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
