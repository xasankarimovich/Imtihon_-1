import 'package:flutter/material.dart';
import 'package:imtihon_project/home_screen/home_page/pay_screen/pay_nominal.dart';
import 'package:imtihon_project/utils/styles.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {"name": "Abang", "phone": "+62 820 4321 1721"},
      {"name": "Devi Ratnasi", "phone": "+62 820 4321 1721"},
      {"name": "Bambang Hartanto", "phone": "+62 820 4321 1721"},
      {"name": "Dilan Cepmek", "phone": "+62 820 4321 1721"},
      {"name": "Advi Aditya", "phone": "+62 820 4321 1721"},
      {"name": "Angga Saputra", "phone": "+62 820 1721 1721"},
      {"name": "Anita Saridewi", "phone": "+62 820 1721 1721"},
      {"name": "Bagas Wijaya", "phone": "+62 820 4321 1721"},
      {"name": "Bambang Hartanto", "phone": "+62 820 4321 1721"},
      {"name": "Dilan Cepmek", "phone": "+62 820 1721 2432"},
      {"name": "Devi Ratnasi", "phone": "+62 820 1721 1721"},
      {"name": "Devi Ratnasi3", "phone": "+62 820 1721 1721"},
      {"name": "Dilan Cepmek", "phone": "+62 820 1721 1721"},
      {"name": "Advi Aditya", "phone": "+62 820 4321 1721"},
      {"name": "Angga Saputra", "phone": "+62 820 41721 1721"},
      {"name": "Anita Saridewi", "phone": "+62 820 4321 1721"},
      {"name": "Bagas Wijaya", "phone": "+62 820 4321 1721"},
      {"name": "Bambang Hartanto", "phone": "+62 820 4321 1721"},
      {"name": "Dilan Cepmek", "phone": "+62 820 4321 1721"},
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(height: 0,indent: 80,endIndent: 50,color: Colors.grey.shade300,);
          },
          padding: const EdgeInsets.all(5),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(

                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return  ContactDetailScreen();
                  },),);
                },
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF56B8FF).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.person, color: Colors.blue),
                ),
                title: Text(
                  contact["name"]!,
                  style: AppTextStyles.HeadLineblack,
                ),
                subtitle: Text(
                  contact["phone"]!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
