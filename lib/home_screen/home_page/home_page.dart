import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon_project/home_screen/home_page/pay_screen/pay_screen.dart';
import 'package:imtihon_project/top_up/top_up.dart';
import 'package:imtihon_project/my_profile/my_profile.dart';
import 'package:imtihon_project/show_modul/transfer_widget.dart';
import 'package:imtihon_project/utils/styles.dart';

import '../../bottom_save/bottom_save.dart';
import '../../models/models.dart';
import 'notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      appBar: AppBar(
        leadingWidth: 80,
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
                  return const Notifications();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.notifications,
            color: Color(0xFF56B8FF),
            size: 30,
          ),
        ),
        title: const Text(
          "Hello Irfan",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 24, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const MyProfile();
                    },
                  ),
                );
              },
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/profile_Image.png"),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 135,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.shade300),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 189,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.wallet,
                                  size: 10,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Swift Saldo",
                                ),
                              ],
                            ),
                            const Text(
                              '   \$5.500',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Click & see history",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue),
                                      ),
                                      5.width(),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 10,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const PayScreen();
                                },
                              ),
                            );
                          },
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.blue.shade50,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          icon: const Icon(
                            CupertinoIcons.arrow_up_circle_fill,
                            color: Color(0xFF56B8FF),
                            size: 30,
                          ),
                        ),
                        const Text(
                          "Pay",
                          style: TextStyle(
                              color: Colors.white,
                              height: 1,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                              return const TopUp();
                            },),);
                          },
                          icon: const Icon(
                            CupertinoIcons.add_circled_solid,
                            color: Color(0xFF56B8FF),
                            size: 30,
                          ),
                        ),
                        const Text(
                          "Top Up",
                          style: TextStyle(
                              color: Colors.white,
                              height: 1,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            20.height(),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFFFFF)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset("assets/images/search.png"),
                    20.width(),
                    const Text(
                      "Input discount code",
                      style: TextStyle(fontSize: 20, color: Colors.black45),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        ))
                  ],
                ),
              ),
            ),
            30.height(),
            Expanded(
                child: PageView(
              children: [
                GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    padding: const EdgeInsets.all(20),
                    children: [
                      ...List.generate(4, (index) {
                        CategoryModel categoryItem =
                        CategoryModel.categories[index];
                        return Container(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 20,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  padding: const EdgeInsets.all(20),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    color: categoryItem.categoryBackgroundColor,
                                  ),
                                  child: Image.asset(
                                    categoryItem.categoryImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                10.height(),
                                Expanded(
                                  child: Text(
                                    categoryItem.categoryName,
                                    style: AppTextStyles.Paragraphblack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                    ]
                ),
                GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    padding: const EdgeInsets.all(20),
                    children: [
                      ...List.generate(4, (index) {
                        CategoryModel categoryItem =
                        CategoryModel.categories[index + 4];
                        return Container(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 20,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  padding: const EdgeInsets.all(20),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    color: categoryItem.categoryBackgroundColor,
                                  ),
                                  child: Image.asset(
                                    categoryItem.categoryImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                10.height(),
                                Expanded(
                                  child: Text(
                                    categoryItem.categoryName,
                                    style: AppTextStyles.Paragraphblack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                    ]
                ),
                // Wrap(
                //   spacing: 30,
                //   runSpacing: 30,
                //   children: [
                //     ...List.generate(4, (index) {
                //       CategoryModel categoryItem =
                //           CategoryModel.categories[index];
                //       return Container(
                //         padding: EdgeInsets.only(
                //           left: 10,
                //           top: 20,
                //           right: 80,
                //           bottom: 80,
                //         ),
                //         decoration: const BoxDecoration(
                //           borderRadius: BorderRadius.all(
                //             Radius.circular(30),
                //           ),
                //           color: Color(0xFFFFFFFF),
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 20, top: 20),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Container(
                //                 height: 80,
                //                 width: 95,
                //                 decoration: BoxDecoration(
                //                   borderRadius: const BorderRadius.all(
                //                     Radius.circular(20),
                //                   ),
                //                   color: categoryItem.categoryBackgroundColor,
                //                 ),
                //                 child: Image.asset(
                //                   categoryItem.categoryImage,
                //                   scale: 2,
                //                 ),
                //               ),
                //               10.height(),
                //               Text(
                //                 categoryItem.categoryName,
                //                 style: AppTextStyles.Paragraphblack,
                //               ),
                //             ],
                //           ),
                //         ),
                //       );
                //     })
                //   ],
                // ),
                // Wrap(
                //   spacing: 30,
                //   runSpacing: 30,
                //   children: [
                //     ...List.generate(4, (index) {
                //       CategoryModel categoryItem =
                //           CategoryModel.categories[index + 4];
                //       return Container(
                //         padding: EdgeInsets.only(
                //             left: 10, top: 20, right: 80, bottom: 80),
                //         decoration: const BoxDecoration(
                //           borderRadius: BorderRadius.all(
                //             Radius.circular(30),
                //           ),
                //           color: Color(0xFFFFFFFF),
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 20, top: 20),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Container(
                //                 height: 80,
                //                 width: 95,
                //                 decoration: BoxDecoration(
                //                   borderRadius: const BorderRadius.all(
                //                     Radius.circular(20),
                //                   ),
                //                   color: categoryItem.categoryBackgroundColor,
                //                 ),
                //                 child: Image.asset(
                //                   categoryItem.categoryImage,
                //                   scale: 2,
                //                   fit: BoxFit.none,
                //                 ),
                //               ),
                //               10.height(),
                //               Text(
                //                 categoryItem.categoryName,
                //                 style: AppTextStyles.Paragraphblack,
                //               ),
                //             ],
                //           ),
                //         ),
                //       );
                //     })
                //   ],
                // ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (value) {
          activeIndex = value;
          setState(() {});
          if (activeIndex == 1) {
            showModalBottomSheet(
                context: context,
                builder: (ctx) {
                  return const SizedBox(child: TransferWidget());
                });
          }
          activeIndex = value;
          setState(() {
            if (activeIndex == 2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return const BottomSaveHistory();
                  },
                ),
              );
            }
          });

          if (activeIndex == 1) {
            showModalBottomSheet(
                context: context,
                builder: (ctx) {
                  return const SizedBox(child: TransferWidget());
                });
          }
        },
        currentIndex: activeIndex,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: activeIndex == 0
                    ? const Color(0xFF56B8FF).withOpacity(0.10)
                    : Colors.white,
              ),
              height: 50,
              width: 50,
              child: Image.asset('assets/model_images/bottomhome.png',
                  scale: 2,
                  color: activeIndex == 0 ? const Color(0xFF56B8FF) : Colors.grey),
            ),
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: activeIndex == 1
                    ? const Color(0xFF56B8FF).withOpacity(0.10)
                    : Colors.white,
              ),
              height: 50,
              width: 50,
              child: Image.asset('assets/model_images/bottomsend.png',
                  scale: 2,
                  color: activeIndex == 1 ? const Color(0xFF56B8FF) : Colors.grey),
            ),
            tooltip: "Send",
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: activeIndex == 2
                    ? const Color(0xFF56B8FF).withOpacity(0.10)
                    : Colors.white,
              ),
              height: 50,
              width: 50,
              child: Image.asset('assets/model_images/bottomsave.png',
                  scale: 2,
                  color: activeIndex == 2 ? const Color(0xFF56B8FF) : Colors.grey),
            ),
            tooltip: "Save",
          ),
        ],
      ),
    );
  }
}
