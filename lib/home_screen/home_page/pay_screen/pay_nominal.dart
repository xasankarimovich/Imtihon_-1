import 'package:flutter/material.dart';
import 'package:imtihon_project/home_screen/home_page/pay_screen/pay_review.dart';
import 'package:imtihon_project/utils/styles.dart';

class ContactDetailScreen extends StatefulWidget {
  @override
  _ContactDetailScreenState createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  String inputAmount = "0";

  void onKeyTap(String value) {
    setState(() {
      if (inputAmount == "0") {
        inputAmount = value;
      } else {
        inputAmount += value;
      }
    });
  }

  void onBackspace() {
    setState(() {
      if (inputAmount.length > 1) {
        inputAmount = inputAmount.substring(0, inputAmount.length - 1);
      } else {
        inputAmount = "0";
      }
    });
  }

  void onClear() {
    setState(() {
      inputAmount = "0";
    });
  }

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Divider(
                  endIndent: 170,
                  indent: 170,
                  thickness: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF56B8FF).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.person, color: Colors.blue),
                    ),
                    16.width(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abang",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+62 820 4321 1721",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Input Nominal",
                      textAlign: TextAlign.start,

                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "\$$inputAmount",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 12,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2,
                      ),
                      itemBuilder: (context, index) {
                        if (index < 9) {
                          return GestureDetector(
                            onTap: () => onKeyTap((index + 1).toString()),
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  (index + 1).toString(),
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          );
                        } else if (index == 9) {
                          return GestureDetector(
                            onTap: onClear,
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Icon(Icons.clear, size: 24),
                              ),
                            ),
                          );
                        } else if (index == 10) {
                          return GestureDetector(
                            onTap: () => onKeyTap("0"),
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "0",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: onBackspace,
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Icon(Icons.backspace, size: 24),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                              return PayReview();
                            },),);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Confirm",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
