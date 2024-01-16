import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: kPrimaryColor),
          child: Stack(
            children: [
              Center(
                child: Image.asset('assets/img.png'),
              ),
              Text(
                'CipherX',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Bruno Ace SC',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.72,
                ),
              ),
            ]
          )
        )
      ]
    );
  }
}