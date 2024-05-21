import 'package:flutter/material.dart';
import '../utils/styles.dart';
import 'home_page/home_page.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF56B8FF),
      body: Column(
        //
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 12,
            child: Center(
              child: Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(62.5),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/send.png",
                    ),
                    scale: 2,
                  ),
                ),
              ),
            ),
          ),

          const Expanded(
            flex: 2,
            child: Column(
              children: [
                Text("SWIFT", style: AppTextStyles.HeadLinebWhite),
                Text("Gratis transfer antar bank", style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
