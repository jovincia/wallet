import 'package:flutter/material.dart';
import 'package:wallet/Home.dart';
import 'main.dart';
import 'package:wallet/Tabs.dart';


//void main() => runApp(MyApp());

class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }

}
class SignUpPage extends StatefulWidget{
  @override
  _SignUpPageState createState()=>_SignUpPageState();
}
class _SignUpPageState  extends State <SignUpPage> {
  MediaQueryData queryData;
  static const Color greyc = Color(0xff494F58);
  static const Color bluec = Color(0xff59C0E6) ;


  @override
  Widget build(BuildContext context) {

    queryData=MediaQuery.of(context);
    return Scaffold(

      body: SingleChildScrollView(
        child: CustomPaint(
          painter: SignUpPainter(),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
       /*   Row(
          children: <Widget>[
          SizedBox(height: queryData.size.width*0.35),
*/
          SizedBox(height: queryData.size.width*0.135),
              IconButton(icon: Icon(Icons.arrow_back_ios),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return SignInPage();
                        }
                    ));
                  }
              ),
         // ]),

          Row(
            children: <Widget>[
              SizedBox(height: queryData.size.width*0.2),
              Text('      Create ',
                style: TextStyle(
               fontSize: queryData.size.width*0.12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ],
          ),

              Row(
                children: <Widget>[
                  SizedBox(height: queryData.size.width*0.2),
                  Text(
                    '         Account',
                    style: TextStyle(
                      fontSize: queryData.size.width*0.12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(queryData.size.width*0.07),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: queryData.size.width*0.2),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'First name',
                          hintText: 'First name',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color:Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width*0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Last name',
                          hintText: 'Last name',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color:Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width*0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color:Colors.white,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color:Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width*0.05),
                      TextFormField(
                        obscureText:true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: queryData.size.width*0.05,
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: queryData.size.width*0.05,
                              color:Colors.white,
                            )
                        ),
                      ),
                      SizedBox(height: queryData.size.width*0.05),
                      TextFormField(
                        obscureText:true,
                        decoration: InputDecoration(
                          labelText: 'Confirm password',
                          hintText: 'Confirm password',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width*0.05,
                            color:Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width*0.1),
                      Row(                                                                     
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: queryData.size.width*0.08,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ClipOval(
                            child: Material (
                              color: Colors.orange,
                              child: InkWell(
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      queryData.size.width*0.015
                                  ),
                                  child:IconButton(
                                    color: Colors.black,
                                    icon:Icon(Icons.arrow_forward,),
                                    onPressed: (){
                                       Navigator.of(context).push(
                                                  MaterialPageRoute(builder:(_)=> Home())
                                         );
                                              }),
                                  ),
                              ),
                                    ),
                                     ),
            ],
            ),
                      SizedBox(height: queryData.size.width*0.1),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              print('you tapped on sign In inkwell');
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_)=>SignInPage(),
                                ),
                              );
                            },
                            child: Text('Sign In',
                              style: TextStyle(
                                fontSize: queryData.size.width*0.05,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],

        ),
      ),
      ),
    );



  }


}

class SignUpPainter  extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Color orangec = Color(0xffFEAC46);
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
  bool shouldRepaint(SignUpPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(SignUpPainter oldDelegate) => false;

}

