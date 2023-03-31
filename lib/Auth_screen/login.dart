
import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/core/config/size_phone.dart';
import 'Register.dart';
import 'package:get/get.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Mylogin();
  }
}
class Mylogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Mylogin();
}
class _Mylogin extends State<Mylogin> {
  //var dropdownValue;
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    size_phone().init(context);
    // TODO: implement build
    return Form(
  key: _keyForm,
  child: ListView(
  children: [
  textfield('Enter Email'),
  SizedBox(height: 15,),
  textfield('Enter Password'),
  Align(alignment:Alignment.topLeft,
  child: TextButton(onPressed: (){}, child: Text('FORGET PASSWORD',style: TextStyle(color: kingColor),))),
  Center(
  child: Container(
  margin: EdgeInsets.only(top: 30),
  width: size_phone.width!/1.5,
  height: size_phone.defualtsize!*5,
  child: ElevatedButton(onPressed: () {
    Get.toNamed('home');

  }, child: Text("SIGN IN"),
  style: ButtonStyle(
  backgroundColor: MaterialStateProperty
      .all<Color>(kingColor),
  shape: MaterialStateProperty.all<
      RoundedRectangleBorder>(
  RoundedRectangleBorder(
  borderRadius: BorderRadius
      .circular(30)))
  ),
  ),
  ),
  ),


  ]),
  );}
  textfield(String s) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) =>
      value!.isEmpty
          ? 'Enter valid email'
          : null,
      decoration: InputDecoration(
        hintText: s,
        hintStyle: TextStyle(color: Colors.black,
            fontSize: 18),),);
  }

}