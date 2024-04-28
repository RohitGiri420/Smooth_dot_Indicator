import 'package:flutter/material.dart';
import 'package:smooth_dot_indicator/Pages/Page1.dart';
import 'package:smooth_dot_indicator/Pages/Page3.dart';
import 'package:smooth_dot_indicator/Pages/Page4.dart';
import 'package:smooth_dot_indicator/Pages/page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      backgroundColor: Color(0xffe3e3e3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 400,
            child: PageView(
              controller: _controller,
              children: [Page1(), Page2(), Page3(), Page4()],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,



            // Swap Effect
            // effect: SwapEffect(),

            // Worm E
            // effect: WormEffect(),

            // Jumping effect...................

            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xffd1505a),
              dotColor: Colors.black38,

            ),
          )
        ],
      ),
    );
  }
}
