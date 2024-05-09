import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_in_kyrgyz/metods/page_image.dart';
import 'package:travel_in_kyrgyz/metods/pages_start.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = PageController();
  final pageView = PageView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: const [
              PageStart(
                image: 'assets/34560.jpg',
                text: 'Welcome',
                color: Colors.green,
                text_small: 'There you can find "Lands of Dreams"',
              ),
              PageStart(
                image: 'assets/31256.jpg',
                text: 'All About Kyrgyzstan',
                color: Color.fromARGB(255, 21, 205, 189),
                text_small: 'Land really is the best art.',
              ),
              ImagePageCl(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 170,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3, //lenghct
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                  dotColor: Colors.white,
                  activeDotColor: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
