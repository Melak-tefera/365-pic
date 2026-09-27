import 'dart:collection';

import 'package:app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashpage extends StatelessWidget {
const Splashpage({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeh= MediaQuery.sizeOf(context).height;
    final sizew= MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Lottie.asset(
              "lib/asset/Cameras and Photography.json",
              height: sizeh*0.7,
              width: sizew,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage())),
                child: Container(
                  height: sizeh*0.08,
                  width: sizew,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "S t a r t",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                      )
                    ),
                ),
              )
          ],
        ),
      )),
    
    );
  }
}