import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: () {}),
                const SizedBox(width: 20),
                MyButton(text: 'Cancel', onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
