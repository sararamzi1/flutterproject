import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget{
  LoginPage ({super.key});

  @override
  State <LoginPage> createState()=> _LoginPageState();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
class  _LoginPageState extends State <LoginPage>{
  @override
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  bool rememberUser=false;
  late Size mediaSize;
  late Color myColor;
  @override
  Widget build (BuildContext context) {
    myColor=Colors.white30;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(

        color: myColor,
        image: DecorationImage(image: AssetImage('assets/IMG_20241124_193345_043.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode( myColor.withOpacity(0.6),BlendMode.dstATop),
        ),),


      child: Scaffold(

        backgroundColor: Colors.white30,
        body: Stack(children: [
          Positioned(top:30,child: _buildTop()),
          Positioned(bottom:0,child: _buildBottom())
        ]),
      ),
    );
  }


  Widget _buildTop(){
    return SizedBox(

      width: mediaSize.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/4_5893141239775106827.png',width: 50,height: 50,),
          Text('تسجيل الدخول',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }


  Widget _buildBottom(){
    return SizedBox(width: mediaSize.width,
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
              topRight: Radius.circular(30),)

        ),
        child:Padding(
          padding:  EdgeInsets.all(15.0),
          child: _buildFrom(),
        ),
      ),
    );
  }


  Widget _buildFrom(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('اهلا بك',style:TextStyle(color: Colors.blueAccent,fontSize: 35,fontWeight: FontWeight.bold),),
        _buildGreyText("يرجى ادخال بياناتك"),
        const SizedBox(height: 60,),
        _buildGreyText('الاسم'),
        _buildInputFiled(nameController),
        const SizedBox(height: 40,),
        _buildGreyText('كلمة السر'),
        _buildInputFiled(passwordController,isPassword: true),
        const SizedBox(height: 20,),
        _buildRememberForget(),
        const SizedBox(height: 20),
        _buildLoginButton(),
        const SizedBox(height: 20,),
      ],
    );
  }


  Widget _buildGreyText(String text){
    return Text(text,style: TextStyle(
      color: Colors.grey,
    ),);
  }

  Widget  _buildInputFiled(TextEditingController controller,{isPassword = false}){
    return TextField(
      textAlign: TextAlign.right,
      controller:controller,
      decoration: InputDecoration(
        prefixIcon: isPassword?Icon(Icons.remove_red_eye):Icon(Icons.done),
      ),
      obscureText: isPassword,
    );
  }
  Widget  _buildRememberForget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value:  rememberUser, onChanged: (value){
              setState(() {
                rememberUser=value!;
              });
            }),
            _buildGreyText('تذكرني'),
          ],

        ),
        TextButton(onPressed: (){}, child: _buildGreyText('لقد نسيت كلمة السر')),
      ],



    );




  }

  Widget  _buildLoginButton(){
    return   Container(
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
          minWidth:double.infinity,
          height: 60,

          color: Colors.blue,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          ),
          onPressed: () {
            debugPrint('الاسم:${nameController.text}');
            debugPrint('كلمة السر:${passwordController.text}');
          }, child: Text('تسجيل الدخول',style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.w600

        ),),



        )



    ) ;





  }



}

