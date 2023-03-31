import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'detail_food.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/core/config/size_phone.dart';
class home extends StatefulWidget {
   home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
String isSelect='Foods';
GlobalKey<ScaffoldState> _key=GlobalKey<ScaffoldState>();
TextEditingController searchitem=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
             Align(
               alignment: Alignment.centerLeft,
               child: Padding(
                 padding: EdgeInsets.only(left: size_phone.defualtsize!*3,top: size_phone.defualtsize!*6 ),
                 child: Column(
                  children: [
                    Text('Delicious',style: TextStyle(color:kingColor,fontWeight: FontWeight.bold,fontSize: 30),),
                    Text('Food for you',style: TextStyle(fontSize: 20),)
                  ],
            ),
               ),
             ),
            Container(
              margin: EdgeInsets.only(left: size_phone.defualtsize!*5,right: size_phone.defualtsize!*5,top: size_phone.defualtsize!*3),
              child: TextFormField(
                controller: searchitem,
                onFieldSubmitted:(val){
                  Get.toNamed('search');
                },
              decoration: InputDecoration(
                hintText: 'search...',
                filled: true,
                fillColor: Colors.white,

                prefixIcon: Icon(Icons.search),
                border:border(),
                disabledBorder: border(),
                enabledBorder: border()
              ),
            ),),
            SizedBox(height: size_phone.defualtsize!*2,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  content('Foods'),
                  content('Drinks'),
                  content('Snaks'),
                  content('Ice'),
                  content('Coffee'),

                ],
              ),
            ),
            SizedBox(height: size_phone.defualtsize!*3,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: size_phone.defualtsize!*5,),
                    detail_food( namefood: 'Salta', imagePro: 'asset/6.jpg', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/3.3, width: size_phone.width!/2,),
                    SizedBox(width: size_phone.defualtsize!*5,),
                    detail_food( namefood: 'Batat', imagePro: 'asset/b4.jpg', Detail: 'Tomate max', price: 'N 700', height: size_phone.height!/3.3, width: size_phone.width!/2,),
                    SizedBox(width: size_phone.defualtsize!*5,),
                    detail_food( namefood: 'meat', imagePro: 'asset/b5.jpg', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/3.3, width: size_phone.width!/2,),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  border() {
    return  OutlineInputBorder(
        borderRadius: BorderRadius.circular(size_phone.defualtsize!*5),
        borderSide: BorderSide(color:Colors.white)
    );
  }

  content(String s) {
    return Container(
      child:Column(
        children: [
          TextButton(child: Text(s,style: TextStyle(
            color: Colors.black45,
            fontSize: 17,
          )),onPressed: (){
            setState(() {
              isSelect=s;
            });
          },),
          if( isSelect==s)Container(
            width:size_phone.defualtsize!*5,
            decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(
                width:1,
                color: kingColor
            ))
          ),)
        ],
      )
    );
  }
}
