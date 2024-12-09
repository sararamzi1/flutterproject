import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'second_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: 'square sss',
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Color(0xff3498db),
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                  bottomLeft: Radius.elliptical(100.0,50.0),
                  bottomRight: Radius.elliptical(100.0,50.0),
                ),
              ),

              child: Center(
                child: Text(
                  'اختر جامعتك',style: TextStyle(  color: Color(0xff0073bf),
                    fontSize: 34,fontWeight: FontWeight.bold,
                    fontFamily: 'Schyler'),
                ),
              ), ),


            Padding(padding: const EdgeInsets.only(top: 30,right: 90,left: 90),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()),);
                  },

                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xff0073bf),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        SizedBox(height: 10),
                        Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                          ),),
                        SizedBox(width: 20,),
                        ClipOval( child: Image.asset('assets/yemen.png',
                          width: 50,
                          height: 50,
                        ),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),
                  )
              ),
            ),
// جامعة العلوم الحديثة
            Padding(padding: const EdgeInsets.only(top: 30,right: 90,left: 90),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()),);
                  },
                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xff0073bf),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10),
                        Text('جامعة المستقبل',textAlign:TextAlign.right,
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                          ),),
                        SizedBox(width: 20,),
                        ClipOval( child: Image.asset('assets/yemen.png',
                          width: 40,
                          height: 40,),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),
                  )
              ),
            ),
            // جامعة العلوم الحديثة
            Padding(padding: const EdgeInsets.only(top: 30,right: 90,left: 90),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()),);
                  },
                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xff0073bf),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10),
                        Text('جامعة تونتك',textAlign:TextAlign.right,
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                          ),),
                        SizedBox(width: 20,),
                        ClipOval( child: Image.asset('assets/yemen.png',
                          width: 40,
                          height: 40,),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),
                  )
              ),
            ),
            // جامعة العلوم الحديثة
            Padding(padding: const EdgeInsets.only(top: 30,right: 90,left: 90),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()),);
                  },
                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xff0073bf),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10),
                        Text('جامعة الرشيد',textAlign:TextAlign.right,
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                          ),),
                        SizedBox(width: 20,),
                        ClipOval( child: Image.asset('assets/yemen.png',
                          width: 40,
                          height: 40,),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),
                  )
              ),
            ),
            // جامعة العلوم الحديثة
            Padding(padding: const EdgeInsets.only(top: 30,right: 90,left: 90),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()),);
                  },
                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10),
                        Text('جامعة الرازي',textAlign:TextAlign.right,
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xff7F8C8D),
                          ),),
                        SizedBox(width: 20,),
                        ClipOval( child: Image.asset('assets/yemen.png',
                          width: 40,
                          height: 40,),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),
                  )
              ),
            ),
          ]  ),



















    );


























  }
}
