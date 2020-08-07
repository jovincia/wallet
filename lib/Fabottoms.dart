import 'package:flutter/material.dart';

class  MyBottoms extends StatelessWidget {
final color;
final textcolor;
final String texticon;
final double height;
final double width;
final Icon icon;
final Function onclick;

MyBottoms({this.color,this.textcolor,this.texticon,this.height,this.width,this.icon,this.onclick});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( color: color, shape: BoxShape.circle,),
      width: width,
      height: height,
      //texticon:texticon,
      child: IconButton(icon: icon,enableFeedback: true, onPressed: onclick),
     

     );

      
   
      
  
    /*  child: 
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            texticon,
          ),
        ],
       ), */
  }
}
