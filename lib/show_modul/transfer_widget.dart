import 'package:flutter/material.dart';
import 'package:imtihon_project/show_modul/domestic/domestic.dart';

class TransferWidget extends StatelessWidget {
  const TransferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 300,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Where do you want to transfer?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const DomesticTransfer();
                          },
                        ),
                      );

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                      color: const Color(0xFFF3F7FB),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFF56B8FF).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            "assets/images/send.png",
                            scale: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Domestic",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    splashColor: Colors.white10,
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                      color: const Color(0xFFFBF8F3),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFC7361A).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            "assets/model_images/wallet.png",
                            scale: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "E - Wallet",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                      color: const Color(0xFF31DC43).withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFF31DC43).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            "assets/model_images/img_1.png",
                            scale: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "International",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
