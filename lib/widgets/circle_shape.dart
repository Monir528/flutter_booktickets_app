import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 2.5, style: BorderStyle.solid)
      ),
    );
  }
}
