import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:async';
import 'home_page.dart';
import 'second_page.dart';
import 'welcom.dart';
class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState()=>_SplashScreenState();
}
class _SplashScreenState  extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>WelPage()),);

    });

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(

        child: Container(
          // color: Colors.amber,
          child: Column( mainAxisAlignment:MainAxisAlignment.center,children:
          <Widget>[
            Center(child:Image.asset('assets/4_5893141239775106827.png',
              width: 180,
              height: 180,
            )),
            SizedBox(height: 30,),
            Text('University Transactions system',
              style: TextStyle( color: Color(0xff0073bf),
                  fontSize: 33,fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: 30,width: 40,),
            // CircularProgressIndicator(),

          ],

          ),

        ),

      ),

    );
  }
}
