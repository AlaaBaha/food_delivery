import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/core/config/size_phone.dart';
import 'login.dart';
class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Myregister();
  }
}
class Myregister extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Myregister();
}
class _Myregister extends State<Myregister>{
  //var dropdownValue;
  final _keyForm=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    size_phone().init(context);
    return  Form(
      key: _keyForm,
      child: ListView(
          children: [
            textfield('Enter Email'),
            SizedBox(height: 15,),
            textfield('Enter Password'),
            SizedBox(height: 15,),
            textfield('Enter RE_Password'),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                width: size_phone.width!/1.5,
                height: size_phone.defualtsize!*5,
                child: ElevatedButton(onPressed: () {
                  Navigator.popAndPushNamed(context, 'home');
                }, child: Text("SIGN UP"),
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
  }}