

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
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 2, 106, 154)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:
                       Center(
                        child: Text(
                          "S t a r t",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 2, 106, 154),
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
                        border: Border.all(color:const Color.fromARGB(255, 2, 106, 154) ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Lottie.asset("lib/asset/Pin code Password Protection, Secure Login animation.json"),
                          Center(
                          child: Text(
                            "L o g i n",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 1, 59, 86),
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                            )
                          ),
                        ],
                        
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
                        border: Border.all(color:const Color.fromARGB(255, 2, 106, 154) ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Lottie.asset("lib/asset/Pin code Password Protection, Secure Login animation.json"),
                          Center(
                          child: Text(
                            "S i g n u p",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 1, 59, 86),
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                            )
                          ),
                        ],
                        
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