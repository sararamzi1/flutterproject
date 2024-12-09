import 'package:flutter/material.dart';
// import 'package:splashscreen/home_page.dart';
// import 'package:splashscreen/main.dart';
import 'second_page.dart';
import 'splash_screen.dart';
import 'home_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'square sss',
      home: WelPage(),
    );
  }
}
class WelPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
              height: 550,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff6D9AC7),
                      Color(0xff3498DB),
                      Color(0xff0073bf),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                    bottomLeft: Radius.elliptical(100.0,50.0),
                    bottomRight: Radius.elliptical(0.0,0.0),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(padding:EdgeInsets.only(left: 0,right: 200,top: 20), child: Text(
                    ' اهلا بك في تطبيق',
                    textAlign:TextAlign.right,
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 30,fontWeight: FontWeight.bold,
                        fontFamily: 'Schyler'
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 200,top: 7),
                    child:Text('!UTS',
                        textAlign:TextAlign.right,
                        style: TextStyle(color: Colors.white,
                          fontSize: 30,fontWeight: FontWeight.bold,
                        )
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top:2,right: 500),
                    child: Image.asset('assets/Happy student-rafiki.png',
                      height: 350,
                      width: 350,
                    ),),
                  Padding(padding: EdgeInsets.only(right: 480,top: 1),
                    child:Text('لتسهيل جميع خطوات معاملاتك الجامعية',
                        textAlign:TextAlign.right,
                        style: TextStyle(color: Colors.amber,
                          fontSize: 20,fontWeight: FontWeight.normal,
                        )
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 6,right: 530),
                      child: Container(
                          padding: EdgeInsets.only(top: 1,left: 1.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )

                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff03c6fc,
                            ),
                                minimumSize:Size(220,50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                            }, child: Text('اضغط للبدئ',  textAlign:TextAlign.right,
                            style: TextStyle(color: Colors.white,
                              fontSize: 18,fontWeight: FontWeight.normal,),
                          ),
                          )
                      )
                  ) ],
              )
          )   ],
      ),
    );
  }}



