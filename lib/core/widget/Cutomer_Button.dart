import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/size_phone.dart';

import '../config/Color.dart';
class customerButton{
  size_phone size=size_phone();
   CustomerButton(String text,void Function() fun){
    return GestureDetector(
      onTap: fun,
      child: Container(child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        width: size_phone.defualtsize!*15,
        height: size_phone.defualtsize!*5,
        color: kingColor,
      ),
    );

  }
}