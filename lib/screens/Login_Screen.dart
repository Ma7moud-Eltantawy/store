import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ref.dart';
class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);
  static const scid="Login";

  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController user=new TextEditingController();
    TextEditingController pass=new TextEditingController();

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
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child:Row(
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
                )  ),
                Expanded(
                  flex: 2,
                  child:Container (
                  margin: EdgeInsets.symmetric(horizontal: width/45,vertical: height/100),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          controller: user,
                          obscureText: false,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: GoogleFonts.architectsDaughter().fontFamily,
                          ),

                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(235, 136, 231, .6),),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color:  Color.fromRGBO(235, 136, 231, .6),),
                              ),


                              hintText: 'البريد الالكترونى',
                              hintStyle: hintstyle,
                          ),
                        ),

                        SizedBox(
                          height: height/80,
                        ),

                        TextField(
                          controller: pass,
                          obscureText: true,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,

                            fontSize: 22,
                            fontFamily: GoogleFonts.architectsDaughter().fontFamily,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(235, 136, 231, .6),),
                            ),

                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:  Color.fromRGBO(235, 136, 231, .6),),
                            ),


                            hintText: 'كلمة المرور',
                            hintStyle: hintstyle,
                          ),
                        ),
                        SizedBox(
                          height: height/80,
                        ),

                       GestureDetector(
                          onTap: (){},
                          child:statictext(text: 'نسيت كلمة المرور؟',unline: true,align: Alignment.centerRight,)
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: height/40),
                          child: buttonloginout(height: height, width: width,onpress: (){
                            Navigator.of(context).pushNamed(Login_Screen.scid);
                          },text: "تسجيل الدخول",color: Color.fromRGBO(235, 136, 231, .9),),
                        ),
                        statictext(text:"او",unline: false,align: Alignment.center,),
                        GestureDetector(
                          onTap: (){},
                          child: statictext(text:"انشاء حساب",unline: true,align: Alignment.center,),
                        ),
                      ],
                    ),
                  ),

                ), ),

              ],
            ),

          ],
        )
    );
  }
}

