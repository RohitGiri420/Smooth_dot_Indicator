import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: ClipRect(
          child: Container(
            height: 400,
            width: 250,
            color: Color(0xffd1505a),
          ),
        ),
      ),
    );
  }
}
