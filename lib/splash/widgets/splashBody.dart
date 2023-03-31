import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/config/Color.dart';
import '../../onBorder/onBorder1.dart';
class splashBody extends StatefulWidget {
  const splashBody({Key? key}) : super(key: key);

  @override
  State<splashBody> createState() => _splashBodyState();
}

class _splashBodyState extends State<splashBody> with SingleTickerProviderStateMixin {
  AnimationController? animatedController;
  Animation? Feading;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animatedController=AnimationController(duration: Duration(seconds: 3), vsync: this,);
    Feading=Tween(begin: .2,end: 1).animate(animatedController!);
    animatedController!.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/splash_home.png'),
            fit: BoxFit.fill
          )
        ),
        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child: AnimatedBuilder(
                animation: Feading!,
                builder: (BuildContext context, Widget? child) {
                 return Opacity(
                   opacity: Feading!.value,
                   child: Text( ' FOOD \n FOR EVERYONE',style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),),
                 );
                },

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width ,),
            Container(
              height: MediaQuery.of(context).size.width/7 ,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/4),
              width: MediaQuery.of(context).size.width/1.3,
             child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                 shape: StadiumBorder(),
                 backgroundColor: Colors.white,

               ),
               onPressed: (){
                 Get.to(()=>onBorder1(),transition: Transition.rightToLeft,duration: Duration(seconds: 1));
               },
               child: Text('Get Start',style: TextStyle(fontSize:19,color: kingColor,),
             )),
            )
          ],
        ),
      ),
    );
  }
}
