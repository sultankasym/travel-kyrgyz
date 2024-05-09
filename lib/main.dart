import 'package:flutter/material.dart';
import 'package:travel_in_kyrgyz/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 99, 55, 2)),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}
