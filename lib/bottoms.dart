import 'package:flutter/material.dart';

class  myBottoms extends StatelessWidget {
final color;
final textcolor;
final text;

myBottoms({this.color,this.textcolor,this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Container(
          color: color,
          child: Center(child:Text(text,style: TextStyle(color: textcolor),),),
        ),
      ),
    );
  }
}
