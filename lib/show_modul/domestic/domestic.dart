import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon_project/show_modul/domestic/domestic_2.dart';
import 'package:imtihon_project/utils/styles.dart';


class DomesticTransfer extends StatefulWidget {
  const DomesticTransfer({super.key});

  @override
  State<DomesticTransfer> createState() => _DomesticTransferState();
}

class _DomesticTransferState extends State<DomesticTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      appBar: AppBar(
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
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ),
                  10.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 120.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade50),
                        child: const Center(
                          child: Text(
                            "Account list",
                            style: TextStyle(
                                fontSize: 20,
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
                            color: Colors.grey.shade200),
                        child: const Center(
                          child: Text(
                            "Favorite",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                  30.height(),
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    color: const Color(0xFFF3F7FB),
                    height: 40,
                    width: double.infinity,
                    child: const Text(
                      "Lost transaction",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return const DomesticAccount();
                      },),);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade50,
                      child: const Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      "Irfan Rahmat",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "SeaBank - 9012 0866 1234",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    trailing: const Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(
                    indent: 50,
                    endIndent: 60,
                  ),
                  ListTile(
                    onTap: (){},
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade50,
                      child: const Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      "Mahardhika",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "BCA - 0921 0937 7890",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    trailing: const Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(
                    indent: 50,
                    endIndent: 60,
                  ),
                  ListTile(
                    onTap: (){},
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade50,
                      child: const Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      "Arif Yuliadi",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "BRI - 0938 5674 2345",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  const Divider(
                    indent: 50,
                    endIndent: 60,
                  ),
                  ListTile(
                    onTap: (){},
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade50,
                      child: const Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      "Irfan Rahmat",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "BCA Digital (blu) - 6547 1234 0987",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.blue.shade300,
                          ),
                          child: const Center(
                            child: Text(
                              "New Transfer",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 25,
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
        ],
      ),
    );
  }
}
