import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon_project/utils/styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            decoration: const BoxDecoration(
              color: Colors.white38,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 10,
                  color: Colors.white38,
                ),
              ],

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      color: Colors.white38,
                    ),
                  ],
                  border: Border.all(
                    color: Colors.white,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/goal.png",
                    ),
                  ),
                ),
              ),
            ),
          ),
          30.height(),
          const Text(
            'Top Up Successful',
            style: TextStyle(
              fontSize: 34,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            'You have completed your top up',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          30.height(),
          const Text(
            'Amount Received',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          const Text(
            '\$5.000',
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
          20.height(),
          TextButton(
            onPressed: () {},
            child: const Column(
              children: [
                Text(
                  "See Detail",
                  style:
                      TextStyle(fontSize: 36, color: Colors.white, height: 1),
                ),
                Divider(
                  indent: 168,
                  endIndent: 168,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.blue.shade300),
              child: const Center(
                child: Text(
                  "Oke",
                  style: AppTextStyles.HeadLinebWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
