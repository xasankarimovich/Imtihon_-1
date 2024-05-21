import 'package:flutter/material.dart';
class NumberKeyboard extends StatelessWidget {
  final List<String> keys = [
    '1', '2', '3',
    '4', '5', '6','000',
    '7', '8', '9','0',

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: keys.length,
      itemBuilder: (context, index) {
        return ElevatedButton(
          onPressed: keys[index].isEmpty ? null : () {
            print('Pressed ${keys[index]}');
          },
          child: Text(
            keys[index],
            style: TextStyle(fontSize: 24),
          ),
        );
      },
    );
  }
}
