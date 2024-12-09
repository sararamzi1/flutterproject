import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GradientBackround(),

    );

  }
}
class  GradientBackround extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff6D9AC7),
                Color(0xff3498DB),
                Color(0xff0073bf),
              ],

            ),
          ),



        ),
        Positioned(top: 10,left: 10,
          child: IconButton(icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),

        ),
        Positioned(top: 35,left: 800,
          child: Text('انشاء حساب',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),),

        Center(
          child: CurvedBox(),),
      ],
    );




  }
}
class CurvedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(padding:const EdgeInsets.only(top: 90,left: 9,right: 9,bottom:0),
        child:Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                topRight: Radius.circular(30),)
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: RegistrationFrom(),
          ),

        )

    );
  }
}
class  RegistrationFrom extends StatefulWidget{
  @override
  _RegistrationFromState createState()=> _RegistrationFromState();
}
class _RegistrationFromState extends State<RegistrationFrom>{
  final TextEditingController nameController= TextEditingController();
  final TextEditingController idController= TextEditingController();
  final TextEditingController phoneController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();

  String? errorMessage;
  final List<String>existingIds=[
    "12345",
    "67890",
    "545454",
    "98765",
  ];
  void register(){
    String academicId=idController.text;
    if(existingIds.contains(academicId)){
      setState(() {
        errorMessage='error';
      });}else{
      setState(() {
        errorMessage=null;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(controller: nameController,decoration: InputDecoration(labelText: 'الاسم'),),
        const SizedBox(height: 30,),
        TextField(controller: idController,decoration: InputDecoration(labelText:'الرقم الاكاديمي'),),
        const SizedBox(height: 30,),
        TextField(controller: phoneController,decoration: InputDecoration(labelText: 'رقم الهاتف'),),
        const SizedBox(height: 30,),
        TextField(controller: passwordController,decoration: InputDecoration(labelText: 'كلمة السر'),
          obscureText:true,),



        SizedBox(height: 20),

        Padding(padding:  EdgeInsets.only(top: 6,right: 20,left: 20),
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
                      minimumSize:Size(60,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  onPressed: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                  }, child: Text('انشاء حساب',  textAlign:TextAlign.right,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,fontWeight: FontWeight.normal,),
                ),
                )

            )


        )],











    );



  }
}