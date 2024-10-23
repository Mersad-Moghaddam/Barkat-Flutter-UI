import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/custom_buttonNbar.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/custom_drawer.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/financial_info.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/first_custom_banner.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/custom_card.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/second_custom_banner.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/user_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBNB(),
      drawer: const CustomDrawer(),
      appBar: AppBar(
        primary: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: () {
                      showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text(
                                'ارتباط با ما',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                'اتصال به پشتیبانی برکت',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.blue.shade400,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        'بله',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.red,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        'خیر',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          });
                    },
                    icon: const Icon(Icons.headphones_outlined)),
                IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: () {
                      showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                title: const Text(
                                  "اعلان ها",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content: const Text(
                                  'هیچ اعلانی وجود ندارد',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                actions: [
                                  Center(
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor:
                                                Colors.blue.shade400,
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("باشه",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ))))
                                ]);
                          });
                    },
                    icon: const Icon(Icons.notifications_outlined)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      showAboutDialog(context: context);
                    },
                    child: Text(
                      'برکت',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.blue.shade800),
                    ))
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: UserInformation(),
            ),
            const SizedBox(
              height: 8,
            ),
            const FirstCustomBanner(),
            Center(
              child: Wrap(
                spacing: 50,
                runSpacing: 8,
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: [
                  CustomCard(
                    backgroundColor: Colors.orange.shade700,
                    title: "صندوق فروش",
                    icon: Icons.sell_outlined,
                  ),
                  CustomCard(
                    backgroundColor: Colors.orange.shade400,
                    title: "ثبت نام",
                    icon: Icons.person_outline_outlined,
                  ),
                  CustomCard(
                    backgroundColor: Colors.blue.shade800,
                    title: " موجودی انبار",
                    icon: Icons.warehouse_outlined,
                  ),
                  CustomCard(
                    backgroundColor: Colors.green.shade300,
                    title: "کالا ها ",
                    icon: Icons.shopping_basket,
                  ),
                  const CustomCard(
                    backgroundColor: Color.fromARGB(255, 248, 222, 23),
                    title: "صورتحساب ",
                    icon: Icons.receipt_long_outlined,
                  ),
                  CustomCard(
                    backgroundColor: Colors.blue.shade300,
                    title: "گردش حساب ",
                    icon: Icons.account_balance_outlined,
                  ),
                  CustomCard(
                    backgroundColor: Colors.blue.shade100,
                    title: "ویزیتور ",
                    icon: Icons.handshake_outlined,
                  ),
                  const CustomCard(
                    backgroundColor: Color.fromARGB(255, 78, 122, 13),
                    title: "بازار ",
                    icon: Icons.local_grocery_store_outlined,
                  ),
                  const CustomCard(
                    backgroundColor: Color.fromARGB(255, 116, 146, 39),
                    title: "باشگاه ",
                    icon: CupertinoIcons.heart_fill,
                  ),
                  const CustomCard(
                    backgroundColor: Color.fromARGB(255, 86, 180, 177),
                    title: "شیپور ",
                    icon: Icons.volume_up_outlined,
                  ),
                  const CustomCard(
                    backgroundColor: Color.fromARGB(255, 249, 204, 38),
                    title: "گزارشات ",
                    icon: Icons.receipt_outlined,
                  ),
                  const CustomCard(
                    backgroundColor: Color.fromARGB(255, 203, 122, 1),
                    title: "مشتریان ",
                    icon: Icons.people_outline,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const FinancialInfo(),
            const SizedBox(
              height: 12,
            ),
            const SecondCustomBanner(),
          ],
        ),
      ),
    );
  }
}
