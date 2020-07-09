import 'package:flutter/material.dart';
import 'package:wallet/bottoms.dart';
import 'package:wallet/homepage.dart';
import 'package:wallet/Home.dart';
import 'main.dart';


//void main() => runApp(caluculatorpage());

class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch:Colors.lightBlue,
      ),
      home: CaluculatorPage(),
    );
  }
}

class CaluculatorPage extends StatefulWidget{
  @override
  _CaluculatorPageState createState()=>_CaluculatorPageState();
}

class _CaluculatorPageState extends State<CaluculatorPage>{
  MediaQueryData queryData;
  static const Color greyc = Color(0xff494F58);
  static const Color bluec = Color(0xff59C0E6  );

    final List<String> bottoms=[

      '7','8','9','date',
      '4','5','6','+',
      '1','2','3','-',
      '.','0','X','OK',

    ];

  @override
Widget build(BuildContext context){
    return Scaffold(
     // backgroundColor:Colors.grey[70],
      body:Column(
          children: <Widget>[
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: GridView.builder(
                  itemCount: bottoms.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
                  itemBuilder: (BuildContext context,int index){
                    return myBottoms(
                      text:bottoms[index],
                      color: isOperator(bottoms[index]) ? Colors.deepOrangeAccent : Colors.deepOrangeAccent[50],
                      textcolor: isOperator(bottoms[index])? Colors.white : Colors.deepOrangeAccent,
                    );
                  }

                ),
                    //color: Colors.black87,



            ),
            ),
          ]
      ),
    );
  }
   bool isOperator(String c ){
    if (c =='+'|| c == '-'|| c=='OK'){
      return true;
    }
    return false;
  }
}


class CalculatorPainter  extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {
  const Color greyc = Color(0xff494F58);
  const Color bluec = Color(0xff59C0E6);
  var paint = Paint();

  paint.color = bluec;

  Offset c1 = Offset(size.width * 1.0, size.width * 0.3);
  double radius1 = size.width *1.1;

  canvas.drawCircle(c1, radius1, paint);

  paint.color = greyc;

  Offset c2 = Offset(size.width * 0.05, size.width * 1.8);
  double radius2 = size.width * 0.9;

  canvas.drawCircle(c2, radius2, paint);
}


@override
bool shouldRepaint(CalculatorPainter oldDelegate) => false;

@override
bool shouldRebuildSemantics(CalculatorPainter oldDelegate) => false;

}
























