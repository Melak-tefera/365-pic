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
            SizedBox(height: sizeh*0.05,),
            Lottie.asset(
              "lib/asset/Cameras and Photography.json",
              height: sizeh*0.6,
              width: sizew,
              fit: BoxFit.contain,
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
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                      )
                    ),
                ),
              ),
              SizedBox(height: sizeh*0.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage())),
                    child: Container(
                      height: sizeh*0.08,
                      width: sizew/2.5,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                          "L o g i n",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                          )
                        ),
                    ),
                  ),

                  SizedBox(width: sizew*0.04,),

                  GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage())),
                child: Container(
                  height: sizeh*0.08,
                  width: sizew/2.5,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "S i g n u p",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                      )
                    ),
                ),
              ),
                ],
              ),
          ],
        ),
      )),
    
    );
  }
}