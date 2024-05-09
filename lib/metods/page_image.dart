import 'package:flutter/material.dart';
import 'package:travel_in_kyrgyz/pages/sign_upp.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ImagePageCl(),
    );
  }
}

class ImagePageCl extends StatelessWidget {
  const ImagePageCl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/33522.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'The world most Beatiful Places',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        decorationColor: Color.fromARGB(255, 174, 227, 142),
                        color: Colors.black),
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 190),
                // ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 103, 186, 225),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Center(
                      child: Text(
                        'Press to Travel',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  child: const Text(
                    'Already have account? Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
