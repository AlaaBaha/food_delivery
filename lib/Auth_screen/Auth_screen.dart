import 'package:flutter/material.dart';
import 'package:smallproduct/Auth_screen/Register.dart';
import 'package:smallproduct/Auth_screen/login.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/core/config/size_phone.dart';
class Auth_screen extends StatefulWidget {
   Auth_screen({Key? key}) : super(key: key);

  @override
  State<Auth_screen> createState() => _Auth_screenState();
}

class _Auth_screenState extends State<Auth_screen> {
bool isLog=true;

  @override
  Widget build(BuildContext context) {
    size_phone().init(context);
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Color(0xFFEFEFEF),
              body: Stack(

                  children: [

                    Container(
                      width: size_phone.width!,
                      height: size_phone.height !/ 3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(size_phone.defualtsize!*5),
                            bottomRight:Radius.circular(size_phone.defualtsize!*5), )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(child: CircleAvatar(backgroundImage: AssetImage('asset/login.png'),maxRadius: size_phone.defualtsize!*7,),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  TextButton(onPressed: (){
                                    setState(() {
                                      isLog=true;
                                    });
                                  }, child: Text('LOGIN',style: TextStyle(color: Colors.black,fontSize: 18,
                                  ),)),
                                  if(isLog==true)Container(
                                    width: size_phone.defualtsize!*6,
                                    decoration: BoxDecoration(
                                    border: Border.fromBorderSide(BorderSide(
                                      color: kingColor,
                                      width: 1
                                    ))
                                  ),)
                                ],
                              ),
                              SizedBox(width: size_phone.defualtsize!*6,),

                              Column(
                                children: [
                                  TextButton(onPressed: (){
                                    setState(() {
                                      isLog=false;
                                    });
                                  }, child: Text('REGISTER',style: TextStyle(color: Colors.black,fontSize: 18),)),
                                  if(isLog==false)Container(
                                    width: size_phone.defualtsize!*6,
                                    decoration: BoxDecoration(
                                        border: Border.fromBorderSide(BorderSide(
                                            color: kingColor,
                                            width: 1
                                        ))
                                    ),)
                                ],
                              ),
                            ],)
                        ],
                      ),
                    ),
              Container(
                  margin: EdgeInsets.only(top: 350, left: 20, right: 20),
              child: isLog?login():register(),)


                  ])),
        ));
  }
}
