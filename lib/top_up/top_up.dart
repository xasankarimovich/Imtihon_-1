import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon_project/utils/styles.dart';
class TopUp extends StatelessWidget {
  const TopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 90,
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 120.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.shade50),
                                child: const Center(
                                  child: Text(
                                    "Instan",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.grey,),
                                  ),
                                ),
                              ),
                              20.width(),
                              Container(
                                height: 30,
                                width: 120.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blue.shade50),
                                child: const Center(
                                  child: Text(
                                    "Favorite",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF56B8FF).withOpacity(0.10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/setting/top1.png",
                                  scale: 2,
                                ),
                              ),
                            ),
                            title:  const Text(
                              "Request your friends",
                              style: AppTextStyles.HeadLineblack,
                            ),
                            subtitle: const Text(
                              "You can receive swift balance from friends and family.",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 40,
                          endIndent: 40,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF56B8FF).withOpacity(0.10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/setting/top2.png",
                                  scale: 2,
                                ),
                              ),
                            ),
                            title:  const Text(
                              "Minimarket",
                              style: AppTextStyles.HeadLineblack,
                            ),
                            subtitle: const Text(
                              "Top up your swift balance at the nearest minimarket at your place.",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 40,
                          endIndent: 40,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF56B8FF).withOpacity(0.10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/setting/top3.png",
                                  scale: 2,
                                ),
                              ),
                            ),
                            title:  const Text(
                              "E-Wallet",
                              style: AppTextStyles.HeadLineblack,
                            ),
                            subtitle: const Text(
                              "top up your swift balance at the nearest minimarket at your place",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 40,
                          endIndent: 40,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF56B8FF).withOpacity(0.10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/setting/top4.png",
                                  scale: 2,
                                ),
                              ),
                            ),
                            title:  const Text(
                              "Mobile Banking",
                              style: AppTextStyles.HeadLineblack,
                            ),
                            subtitle: const Text(
                              "So it's easy to fill swift balance with mobile banking.",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 40,
                          endIndent: 40,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF56B8FF).withOpacity(0.10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/setting/top5.png",
                                  scale: 2,
                                ),
                              ),
                            ),
                            title:  const Text(
                              "Internet Banking",
                              style: AppTextStyles.HeadLineblack,
                            ),
                            subtitle: const Text(
                              "Whenever and wherever you can use a PC, laptop or cellphone.",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 40,
                          endIndent: 40,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF56B8FF).withOpacity(0.10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/setting/top6.png",
                                  scale: 2,
                                ),
                              ),
                            ),
                            title:  const Text(
                              "SMS Banking",
                              style: AppTextStyles.HeadLineblack,
                            ),
                            subtitle: const Text(
                              "No internet? just use sms banking to top up your swift saldo.",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 40,
                          endIndent: 40,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF56B8FF).withOpacity(0.10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/setting/top7.png",
                                  scale: 2,
                                ),
                              ),
                            ),
                            title:  const Text(
                              "ATM",
                              style: AppTextStyles.HeadLineblack,
                            ),
                            subtitle: const Text(
                              "Now through the nearest ATM you can top up your swift balance.",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 40,
                          endIndent: 40,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
