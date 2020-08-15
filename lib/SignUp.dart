import 'package:flutter/material.dart';
import 'package:wallet/Home.dart';
import 'main.dart';
import 'Background.dart';


//void main() => runApp(MyApp());

class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  static const Color bluec = Color(0xff59C0E6) ;


  @override
  Widget build(BuildContext context) {

    queryData=MediaQuery.of(context);
     return Scaffold(
      body: Container(
        height: queryData.size.height,
          child: Stack(
          children:[
             CustomPaint(
              painter: Painter(),
              child: Container(),
             ),
              
          
              SizedBox(height: queryData.size.width*0.2),
              Text('      Create ',
                style: TextStyle(
               fontSize: queryData.size.width*0.12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
                         // hintText: 'First name',
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
                         // hintText: 'Last name',
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
                         // hintText: 'Email',
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
                           // hintText: 'Password',
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
                         // hintText: 'Confirm password',
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
                                              } 
                                   ),
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
            
   /*  return Scaffold(

      body: Container(
        height: queryData.size.height,
          child: Stack(
          children:[
             CustomPaint(
              painter: Painter(),
              child: Container(),
             ),
              ], */
          
               
    ),
          ]
      ),
      )
     ); 
      

  }
}


