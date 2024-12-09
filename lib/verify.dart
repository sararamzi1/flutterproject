import 'package:flutter/material.dart';

class Otp extends StatefulWidget{
  const Otp({Key? key}) : super(key: key);
  @override
  _OtpState createState()=> _OtpState();
}

class _OtpState extends State<Otp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage('assets/Verified-amico (1).png'),
            ),

          )


        ],),
      ),


    );
  }
}