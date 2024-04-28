import 'package:flutter/material.dart';
import 'package:smooth_dot_indicator/Pages/Page1.dart';
import 'package:smooth_dot_indicator/Pages/Page3.dart';
import 'package:smooth_dot_indicator/Pages/Page4.dart';
import 'package:smooth_dot_indicator/Pages/page2.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 400,
            child: PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
