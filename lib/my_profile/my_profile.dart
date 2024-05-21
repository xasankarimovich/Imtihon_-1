import 'package:flutter/material.dart';
import 'package:imtihon_project/home_screen/home_page/home_page.dart';
import 'package:imtihon_project/utils/styles.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3F7FB),
        appBar: AppBar(
          surfaceTintColor:const Color(0xFFF3F7FB) ,
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
            "My Profile",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 100,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.green.shade50.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      "assets/images/profile_Image.png",
                      scale: 1,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // Vertikal markazlash
                    children: [
                      const Text(
                        "Irfan",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w900,
                          height: 1,
                        ),
                      ),
                      const Text(
                        "+6281234567890",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green.shade100,
                        ),
                        width: 130,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/vector.png",
                              color: Colors.green,
                              scale: 1.28,
                            ),
                            const Text(
                              "Account Verified",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 120,
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Setting and Security",
                          style: AppTextStyles.HeadLineblack,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/model_images/connect.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Connect your e-wallet",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/setting/img2.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Invite your friends",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/setting/img3.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Language",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/setting/img4.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Discount",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/setting/img5.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Connect your e-wallet",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        10.height(),
                        const Text(
                          "General",
                          style: AppTextStyles.HeadLineblack,
                        ),
                        10.height(),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/setting/img6.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Terms & Conditions",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/setting/img7.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Privacy Policy",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/setting/img8.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Rate Swift",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/model_images/connect.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Connect your e-wallet",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/model_images/connect.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Connect your e-wallet",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Card(
                              color: Colors.blue.shade50,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/model_images/connect.png",
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            title: const Text(
                              "Connect your e-wallet",
                              style: AppTextStyles.Paragraphblack,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 90,
                          endIndent: 60,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
