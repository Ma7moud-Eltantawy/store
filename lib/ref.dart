import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/screens/Login_Screen.dart';

var hintstyle=TextStyle(
    color:  Color.fromRGBO(235, 136, 231, .8),
    fontFamily: GoogleFonts.lemonada().fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w700
);

class buttonloginout extends StatelessWidget {
  const buttonloginout({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.onpress,
    required this.color,

  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final Function onpress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){
      onpress();
    },
      style: ElevatedButton.styleFrom(
       side: BorderSide(width: 2.0, color: Color.fromRGBO(235, 136, 231, .9),),
        primary:color

      ) ,

      child:Container(
        height: height/13,
        width: width/1.2,
        decoration: BoxDecoration(

        ),
        child: Center(
          child: Text(text,style: TextStyle(
              fontFamily: GoogleFonts.lemonada().fontFamily,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600
          ),
          ),
        ),
      ), );
  }
}

class statictext extends StatelessWidget {
  const statictext({
    required this.text,
    required this.unline,
    required this.align,
    Key? key,
  }) : super(key: key);
  final String text;
  final bool unline;
  final Alignment align;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: align,
      child: Text(
        text,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 12,
          fontFamily: GoogleFonts.lemonada().fontFamily,
          decoration: unline==true?TextDecoration.underline:null,
          color: Colors.white,

        ),
      ),
    );
  }
}
