import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon_project/utils/styles.dart';

import '../show_modul/transfer_widget.dart';

class BottomSaveHistory extends StatefulWidget {
  const BottomSaveHistory({super.key});

  @override
  State<BottomSaveHistory> createState() => _BottomSaveHistoryState();
}

class _BottomSaveHistoryState extends State<BottomSaveHistory> {
  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F7FB),
        automaticallyImplyLeading: false,
        titleSpacing: 20,
        title: const Text(
          "Transaction History",
          style: AppTextStyles.HeadLineblack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child : Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 120.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue.shade50),
                    child: const Center(
                      child: Text(
                        "Successful",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  20.width(),
                  Container(
                    height: 30,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Processing",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              10.height(),
              TextField(
                decoration: InputDecoration(
                    suffixStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/model_images/analystic.png",
                          scale: 1.40,
                        ),
                      ),
                    )),
              ),
              20.height(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: ListTile(
                    leading: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF56B8FF).withOpacity(0.10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/send.png",
                          scale: 3,
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      children: [
                        Text(
                          "BRI ➡️ BCI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Mahardhika",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Agust 17, 2022",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rp50.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Successful",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              10.height(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: ListTile(
                    leading: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF56B8FF).withOpacity(0.10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/send.png",
                          scale: 3,
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      children: [
                        Text(
                          "BRI ➡️ BCI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Mahardhika",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Agust 17, 2022",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rp50.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Successful",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              10.height(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: ListTile(
                    leading: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF56B8FF).withOpacity(0.10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/shopepay.png",
                          scale: 2,
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      children: [
                        Text(
                          "BRI ➡️ BCI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Mahardhika",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Agust 17, 2022",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rp50.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Successful",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              10.height(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: ListTile(
                    leading: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF56B8FF).withOpacity(0.10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/model_images/wallet.png",
                          scale: 3,
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      children: [
                        Text(
                          "BRI ➡️ BCI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Mahardhika",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Agust 17, 2022",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rp50.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Successful",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              10.height(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: ListTile(
                    leading: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF56B8FF).withOpacity(0.10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/send.png",
                          scale: 3,
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      children: [
                        Text(
                          "BRI ➡️ BCI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Mahardhika",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Agust 17, 2022",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rp50.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Successful",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              10.height(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: ListTile(
                    leading: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF56B8FF).withOpacity(0.10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/model_images/img_1.png",
                          scale: 3,
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      children: [
                        Text(
                          "BRI ➡️ BCI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Mahardhika",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Agust 17, 2022",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Vertikal markazlash
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rp50.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Successful",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              10.height(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (value) {
          activeIndex = value;
          setState(() {});

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
                  color: activeIndex == 2 ?  Colors.grey : const Color(0xFF56B8FF)),
            ),
            tooltip: "Save",
          ),
        ],
      ),
    );
  }
}
