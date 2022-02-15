import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/screens/Login_Screen.dart';

import '../ref.dart';
class Hello_Screen extends StatefulWidget {
  const Hello_Screen({Key? key}) : super(key: key);
  static const scid="hello";

  @override
  _Hello_ScreenState createState() => _Hello_ScreenState();
}

class _Hello_ScreenState extends State<Hello_Screen> {
  @override
  Widget build(BuildContext context) {
    var med=MediaQuery.of(context).size;
    var height=med.height;
    var width=med.width;
    return Scaffold(

      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/img/fashion4.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child:Transform(
              alignment: FractionalOffset.topLeft,
              transform: Matrix4.skewY(0.25), // skew will not go out of y bounds
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: height/8,
                      width: width,
                      color: Color.fromRGBO(235, 136, 231, .6),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("Loola Store",style: TextStyle(
                            fontFamily: GoogleFonts.architectsDaughter().fontFamily,
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                        ),
                        ),
                        Container(
                            height: height/30,

                            child: Image.asset('assets/img/dress.png')),
                      ],
                    )
                  ],
                )

            ),
          ),
          Positioned(

            bottom: height/15,
            width: width,
            child: Column(
              children:[

                buttonloginout(height: height, width: width,onpress: (){
                  Navigator.of(context).pushNamed(Login_Screen.scid);
                },text: "تسجيل الدخول",color: Color.fromRGBO(235, 136, 231, .9),),
                SizedBox(height: height/40,),
                buttonloginout(height: height, width: width,onpress: (){

                },text: "انشاء حساب",color: Colors.transparent,),

              ],
            ),
          ),
        ],
      )
    );
  }
}



