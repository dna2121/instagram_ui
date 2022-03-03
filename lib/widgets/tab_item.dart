import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  TabItem(this.active, this.icon);

  bool active = true;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active == true ? Colors.black87 : Colors.white,
            ),
          ),
        ),
        child: Icon(icon, size: 33, color: Colors.black87),
      ),
    );
  }
}