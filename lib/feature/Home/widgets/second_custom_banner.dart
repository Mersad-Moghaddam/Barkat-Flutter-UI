import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondCustomBanner extends StatelessWidget {
  const SecondCustomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 78, 132, 193),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade100,
                  Colors.blue.shade300,
                  Colors.blue.shade500,
                  Colors.blue.shade800,
                ]),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(
                image: AssetImage('assets/image.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    textDirection: TextDirection.rtl,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    "دسترسی به تمامی\nفروشگاه های کشور\nدر کمتر  از ۵ ثانیه",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'IranSanse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(48),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            final scaffoldKey = GlobalKey<ScaffoldState>();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                dismissDirection: DismissDirection.vertical,
                                backgroundColor: Colors.amberAccent,
                                shape: const StadiumBorder(),
                                clipBehavior: Clip.hardEdge,
                                elevation: 0,
                                duration: const Duration(seconds: 2),
                                animation: kAlwaysCompleteAnimation,
                                key: scaffoldKey,
                                behavior: SnackBarBehavior.fixed,
                                content: const Center(
                                    child: Text(
                                  ' اشتراک خریداری شد',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            );
                            scaffoldKey.currentState?.openDrawer();
                          },
                          child: Text(
                            "اشتراک بخرید",
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
