import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon_project/home_screen/home_page/pay_screen/pay_nominal.dart';
import 'package:imtihon_project/utils/styles.dart';

import '../../../show_modul/domestic/klaviatura.dart';
import '../../../show_modul/domestic/pin_code.dart';


class PayReview extends StatefulWidget {
  const PayReview({super.key});

  @override
  State<PayReview> createState() => _PayReviewState();
}

class _PayReviewState extends State<PayReview> {
  String inputAmount = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Divider(
                    endIndent: 170,
                    indent: 170,
                    thickness: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconButton(
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
                                return ContactDetailScreen();
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
                      20.width(),
                      Text(
                        "Review Pay",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                30.height(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "\$5.000",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF56B8FF).withOpacity(0.10),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.person, color: Colors.blue),
                  ),
                  title: Text(
                    "Abang",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  subtitle: Text(
                    "+62 820 4321 1721",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                20.height(),
                TextField(


                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Type Note',
                    hintStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                  ),
                  maxLines: 10,

                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return PinInputScreen();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Confirm & Pay",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
