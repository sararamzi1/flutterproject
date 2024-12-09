import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
class SecondPage extends StatelessWidget{
// first login screen for العلوم الحديثة
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
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
        body:SafeArea(
          child: Container(

            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('  مرحبا بك في',textAlign: TextAlign.center
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
                    SizedBox(height: 10),
                    Text('جامعة العلوم الحديثة',textAlign: TextAlign.center
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blueAccent),),
                  ],
                ),

                Container(
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/FB_IMG_1730964687688.jpg',)
                      )
                  ),


                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,

                      shape:
                      RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black

                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => LoginPage()),);
                      },  child:Text('تسجيل الدخول', style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w600

                    ),),
                    ),
                    SizedBox(height: 30),
                    Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                            )

                        ),
                        child:MaterialButton(
                          minWidth: double.infinity,
                          height: 60,

                          color: Color(0xff0073bf),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => SignUp()),);
                          }, child: Text('انشاء حساب',style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.w600

                        ),),



                        )



                    )   ],


                )

              ],







            ),





          ),
          // body:
          //   Padding(padding:EdgeInsets.all(50.0),
          //  child:Row(
          //    mainAxisAlignment: MainAxisAlignment.center,
          //  children: [
          //     Container(
          //       height: 500,
          //         width: 500,
          //         decoration:BoxDecoration(
          //             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
          //             bottomRight: Radius.circular(50),topLeft: Radius.circular(50),topRight: Radius.circular(50),
          //             ),
          //             color: Color(0xff3498DB),
          //         image: DecorationImage(image:
          //         AssetImage("assets/yemen.png"),
          //
          //         ),
          //         ) ,
          //     ),
          //
          // ]  ),
          //      ) ,
          //



        ));






















  }
}