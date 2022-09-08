import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String text;
  // const Category({ Key? key }) : super(key: key);
  Category(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: EdgeInsets.all(5.0),
            height: 40.0,
            color: Colors.teal,
            child: Text(
              "$text",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
