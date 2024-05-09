
import 'package:flutter/material.dart';
import 'package:travel_in_kyrgyz/metods/page_image.dart';

class PageStart extends StatelessWidget {
  const PageStart({
    this.text,
    this.color,
    this.text_small,
    super.key,
    required this.image,
  });
  final String image;
  final String? text;
  final String? text_small;
  final Color? color;

 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: color,
            height: 300,
            width: double.infinity,
            child: Column(
              children: [
                Center(
                  child: Text(
                    text!,
                    selectionColor: const Color.fromARGB(6, 96, 125, 139),
                    style: const TextStyle(
                      //  color: const Color.fromARGB(6, 96, 125, 139),

                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  text_small!,
                  style:  const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w200,
                    color: Color.fromARGB(255, 158, 103, 9),
                  ),
                ),
                 ElevatedButton(
                  onPressed: ()=> nextPage(context),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
 void nextPage(BuildContext context)async {
   await Navigator.push(
       context,
      MaterialPageRoute(
        builder: (BuildContext context) => const ImagePage(),
      ),
    );
  }