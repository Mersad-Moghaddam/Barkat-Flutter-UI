import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/circle_stars.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 214, 236, 254),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  " سطح باشگاه",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue.shade500),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 216, 119, 23),
                      borderRadius: BorderRadius.circular(48),
                    ),
                    child: InkWell(
                      onTap: () {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  actions: [
                                    Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const CircularProgressIndicator(),
                                          const SizedBox(height: 16),
                                          const Text(' ...در حال بارگذاری'),
                                          const SizedBox(
                                            height: 12,
                                          ),
                                          TextButton(
                                              style: TextButton.styleFrom(
                                                foregroundColor:
                                                    Colors.blue.shade800,
                                                backgroundColor:
                                                    Colors.blue.shade100,
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('پایان'))
                                        ],
                                      ),
                                    )
                                  ],
                                  title: const Text('سطوح کاربری',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )));
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "کاربر برنزی",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              width: 24, // You can adjust the size as needed
                              height: 24, // You can adjust the size as needed
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.grey[200]!.withOpacity(
                                        0.8), // Bright silver shine
                                    Colors.brown[400]!,
                                  ],
                                  stops: const [0.3, 1],
                                  center: Alignment.center,
                                  focal: Alignment.center,
                                  focalRadius: 0.1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            const CircleWithStars(),
            Column(
              children: [
                Text(
                  "مرصاد مقدم",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue.shade500),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "سطح احراز هویت ۱",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey.shade600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
