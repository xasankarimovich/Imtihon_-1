import 'package:flutter/material.dart';
import 'package:imtihon_project/home_screen/home_page/home_page.dart';
import 'package:imtihon_project/utils/styles.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      appBar: AppBar(
        surfaceTintColor: const Color(0xFFF3F7FB),
        backgroundColor: const Color(0xFFF3F7FB),
        leadingWidth: 90,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.blue.shade50,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const HomePage();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xFF56B8FF),
            size: 30,
          ),
        ),
        title: const Text(
          "Transfer to domestic bank",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF56B8FF).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/send.png",
                              scale: 3,
                            ),
                          ),
                        ),
                        10.width(),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "Domestic Transfer",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: "  ⚫️  ",
                                style: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontSize: 10,
                                ),
                              ),
                              const TextSpan(
                                text: "Agust 17, 06:13 PM",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yes, Success transfer to BCA",
                          style: AppTextStyles.HeadLineblack,
                        ),
                        Text(
                          "Wow, You have successfully transferred from BRI to BCA Rp. 50.000 to Mahardhika.",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            20.height(),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF56B8FF).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/info.png",
                              scale: 1,
                            ),
                          ),
                        ),
                        10.width(),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Info",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.green.shade400,
                                  fontSize: 25,
                                ),
                              ),
                              TextSpan(
                                text: "  ⚫️  ",
                                style: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontSize: 10,
                                ),
                              ),
                              const TextSpan(
                                text: "Agust 17, 06:23 PM",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wow, Irfan you have saved Rp200.000",
                          style: AppTextStyles.HeadLineblack,
                        ),
                        Text(
                          "Wow, in August, Irfan has saved Rp. 200,000 with 9 transactions. Let's transfer for free again!",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            20.height(),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF56B8FF).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/model_images/dos.png",
                              scale: 1,
                            ),
                          ),
                        ),
                        10.width(),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "Discount",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: "  ⚫️  ",
                                style: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontSize: 10,
                                ),
                              ),
                              const TextSpan(
                                text: "Agust 17, 06:23 PM",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hai, You have voucher discount",
                          style: AppTextStyles.HeadLineblack,
                        ),
                        Text(
                          "Hi irfan you have 4 discount vouchers for swift globe and electricity.",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            10.height(),
            const Text(
              "Yesterday",
              style: AppTextStyles.HeadLineblack,
            ),
            10.height(),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF56B8FF).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/model_images/wallet.png",
                              scale: 3,
                            ),
                          ),
                        ),
                        10.width(),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "E-Wallet",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.orange,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: "  ⚫️  ",
                                style: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontSize: 10,
                                ),
                              ),
                              const TextSpan(
                                text: "Agust 16, 06:10 PM",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yes, Success transfer to GoPay",
                          style: AppTextStyles.HeadLineblack,
                        ),
                        Text(
                          "Wow, You have successfully transferred from BRI to Gopay Rp. 82,000 to Arif Yuliadi.",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Center(
              child: Divider(
                thickness: 3,
                height: 1,
                indent: 150,
                endIndent: 150,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
