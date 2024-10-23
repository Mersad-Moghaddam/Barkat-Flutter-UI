import 'package:flutter/material.dart';
import 'package:nike_ecommerce_flutter/feature/Home/widgets/progress_bar.dart';

class CirclePercent extends StatelessWidget {
  const CirclePercent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(children: [
          SizedBox(
            width: 80,
            height: 60,
            child: CustomPaint(
              painter: SemiCircleProgressBar(
                progress: 0.6, // progress value (0 to 1)
                backgroundColor: const Color.fromARGB(255, 250, 250, 250),
                foregroundColor: Colors.blue,
              ),
            ),
          ),
          Container(
            //padding: const EdgeInsets.all(value),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade500.withOpacity(0.1),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "۶۰٪",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "میزان فروش",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
