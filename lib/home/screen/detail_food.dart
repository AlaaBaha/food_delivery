import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/core/config/size_phone.dart';
class detail_food extends StatelessWidget {
  String imagePro;
  String namefood;
  String Detail;
  double width;
  double height;
  String price;
   detail_food({ required this.height,required this.width,required this.namefood, required this.imagePro,required this.Detail,required this.price,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size_phone().init(context);
    return  Container(
      //  margin: EdgeInsets.only(right: size_phone.defualtsize!*4,left:size_phone.defualtsize!*4),
        width: size_phone.width!/2,
        height: size_phone.height!/2.5,
        child: Stack(
          children: [
            Positioned(
                top: size_phone.defualtsize!*4,
                child: Container(
                    width: this.width,
                    height: this.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                        ,boxShadow: [
                      BoxShadow(
                          color: Color(0xFFD3D2D2),
                          blurRadius: 10,
                          offset: Offset(2,2)
                      )
                    ]

                    ),
                    child: Container(

                      margin: EdgeInsets.only(top: size_phone.defualtsize!*10,),
                      child: Column(
                        children: [
                          Text(this.namefood,style: TextStyle(color: Colors.black),),
                          SizedBox(height: 5,),
                          Text(this.Detail),
                          SizedBox(height: 20,),
                          Text('${this.price}\$' ,style: TextStyle(color: kingColor),)
                        ],
                      ),
                    )
                )),
            Positioned(
                left:size_phone.defualtsize!*4.5,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(size_phone.defualtsize!*5) ,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 10,
                              offset: Offset(3,3)
                          )
                        ]
                    ),
                    child: CircleAvatar(
                      maxRadius:size_phone.defualtsize!*5.5 ,
                      backgroundImage: AssetImage(this.imagePro),

                    ),
                  ),
                )),

          ],
        ),
      )
    ;
  }
}
