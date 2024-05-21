import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon_project/show_modul/domestic/pin_code.dart';
import 'domestic.dart';

class DomesticAccount extends StatefulWidget {
  const DomesticAccount({super.key});

  @override
  State<DomesticAccount> createState() => _DomesticAccountState();

}

class _DomesticAccountState extends State<DomesticAccount> {
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const DomesticTransfer();
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
      body: Container(
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
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: ListTile(
                onTap: () {},
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
                  color: Colors.orange,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    CupertinoIcons.money_dollar,
                    color: Colors.grey,
                  ),
                  hintText: "Transfer Amount",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 24,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Transfer Note",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 24,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
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

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

