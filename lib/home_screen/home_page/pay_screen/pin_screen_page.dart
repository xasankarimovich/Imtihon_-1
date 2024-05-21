import 'package:flutter/material.dart';
import 'package:imtihon_project/home_screen/home_page/pay_screen/payment.dart';
import 'package:imtihon_project/show_modul/domestic/successfull_screen.dart';

class PinInputScreen extends StatefulWidget {
  PinInputScreen({super.key});

  @override
  _PinInputScreenState createState() => _PinInputScreenState();
  final List<String> keys = [
    '1', '2', '3', '✖️',
    '4', '5', '6', '000',
    '7', '8', '9', '0',
  ];
}

class _PinInputScreenState extends State<PinInputScreen> {
  String pin = '';

  void _onKeyPress(String key) {
    setState(() {
      if (key == '✖️') {
        if (pin.isNotEmpty) {
          pin = pin.substring(0, pin.length - 1);
        }
      } else {
        if (pin.length < 4) {
          pin += key;
        }
      }

      if (pin.length == 4) {
        _navigateToNextScreen();
      }
    });
  }

  void _navigateToNextScreen() {
    // PIN to'liq kiritilgan bo'lsa, boshqa ekranga o'tish
    Navigator.push(
      context,
      MaterialPageRoute(builder: (ctx) => PaymentSuccesseful()),
    );
  }

  Widget buildPinCircle(bool filled) {
    return Container(
      width: 25,
      height: 25,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: filled ? Colors.black : Colors.grey.shade300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {},
        ),
        title: const Text(
          "Input 4 digit PIN",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          children: [
            const Text(
              "Input 4 digit your PIN",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) => buildPinCircle(index < pin.length)),
            ),
            const SizedBox(height: 100),
            const Text(
              "Forget PIN?",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            const Spacer(),
            NumberKeyboard(onKeyPress: _onKeyPress),
          ],
        ),
      ),
    );
  }
}

class NumberKeyboard extends StatelessWidget {
  final Function(String) onKeyPress;
  final List<String> keys = [
    '1', '2', '3', '✖️',
    '4', '5', '6', '000',
    '7', '8', '9', '0',
  ];

  NumberKeyboard({super.key, required this.onKeyPress});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: keys.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ElevatedButton(
          onPressed: () => onKeyPress(keys[index]),
          child: Text(
            keys[index],
            style: const TextStyle(fontSize: 24),
          ),
        );
      },
    );
  }
}

