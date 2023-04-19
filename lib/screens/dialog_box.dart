import 'package:flutter/material.dart';
import 'package:untitled/screens/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key,required this.controller,required this.onSave,required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      content: Container(
        height: 150,
        child: Column(
          children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hoverColor: Colors.cyan,
                  border: OutlineInputBorder(
                  ),
                    hintText: "Add New Task"
                  )
                ),
            ),
              Row(
                children: [
                MyButton(text: "Save", onPressed: onSave),
                SizedBox(height: 35,width: 35),
                  MyButton(text: "Cancel", onPressed: onCancel)
                ],
              )

          ],

        ),
      ),
    );
  }
}
