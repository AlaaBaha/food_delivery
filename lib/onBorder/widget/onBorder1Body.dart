import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smallproduct/core/config/size_phone.dart';
import 'package:smallproduct/onBorder/widget/pageViewBorder.dart';
import 'package:smallproduct/onBorder/widget/widget.dart';

import '../../Auth_screen/Auth_screen.dart';
import '../../core/config/Color.dart';
import '../../core/widget/Cutomer_Button.dart';
class onBorder1Body extends StatefulWidget {
  const onBorder1Body({Key? key}) : super(key: key);

  @override
  State<onBorder1Body> createState() => _onBorder1BodyState();
}

class _onBorder1BodyState extends State<onBorder1Body> {
  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(initialPage: 0)..addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
   size_phone size=size_phone();
   size.init(context);
  var numpage= pageController!.hasClients?pageController!.page!:0;
    return Stack(
      children: [
        pageViewBorder(pageController),
        Positioned(
          top:size_phone.defualtsize!*10,
            left:size_phone.defualtsize!*30,
            child: Text('Skip',
            style: TextStyle(
              color: kingColor,
              fontSize: 18
            ),)),
        Positioned(
          top: size_phone.defualtsize!*75,
            left: size_phone.defualtsize!*13,
            child: customerButton().CustomerButton('next',
              numpage <2? ()=>pageController!.nextPage(duration: Duration(seconds: 1), curve: Curves.linear):
                  ()  =>Get.to(Auth_screen())
            ))
      ],

    );
  }
}
