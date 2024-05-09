import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Text('Log in'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0.2),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30, left: 30),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'First Name', ),
            ),
          ),
        ],
      ),
    );
  }
}
