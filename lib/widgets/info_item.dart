import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  InfoItem(this.value, this.title);

  String value;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
