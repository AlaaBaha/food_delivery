import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/size_phone.dart';
import 'package:smallproduct/home/screen/detail_food.dart';
class search extends StatelessWidget {
  String searchiten='';
   search(searchiten,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size_phone().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                BackButton(),
                Text(searchiten)
              ],
            ),
            Container(child: Text('The Found 6 result'),),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Column(
                      children: [
                            detail_food( namefood: 'Salata', imagePro: 'asset/6.jpg', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/4, width: size_phone.width!/2.2,),
                            detail_food( namefood: 'Batat', imagePro: 'asset/b4.jpg', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/4, width: size_phone.width!/2.2,),
                            detail_food( namefood: 'Meat', imagePro: 'asset/b5.jpg', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/4, width: size_phone.width!/2.2,), ],

                    ),
                    Container(
                      margin: EdgeInsets.only(top: size_phone.defualtsize!*15),
                      child: Column(
                        children: [
                          detail_food( namefood: 'Veggie', imagePro: 'asset/bowl1.jpg', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/4, width: size_phone.width!/2.2,),
                          detail_food( namefood: 'Veggie', imagePro: 'asset/bowl4.jpg', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/4, width: size_phone.width!/2.2,),
                          detail_food( namefood: 'Veggie', imagePro: 'asset/bowl5.webp', Detail: 'Tomate max', price: 'N 1900', height: size_phone.height!/4, width: size_phone.width!/2.2,), ],

                      ),
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
