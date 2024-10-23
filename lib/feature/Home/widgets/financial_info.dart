import 'package:flutter/material.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/circle_percent.dart';

class FinancialInfo extends StatelessWidget {
  const FinancialInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 214, 236, 254),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    " فروش صندوق ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 29, 153, 255)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "تومان",
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              "۱,۷۶۵,۳۴۵ ",
                              style: TextStyle(
                                  fontFamily: 'IranSanse',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              const CirclePercent(),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: Text(
                      " موجودی صندوق",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 29, 153, 255)),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: Row(
                      children: [
                        Text(
                          "کالا",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "۳,۵۶۷,۱۲۳",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
