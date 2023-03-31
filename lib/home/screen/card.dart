import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/core/config/size_phone.dart';
class card extends StatefulWidget {
   card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
int? select;

  @override
  Widget build(BuildContext context) {
    size_phone().init(context);
    List<String> imag=['asset/6.jpg','asset/b4.jpg','asset/b5.jpg'];
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(children: [
                BackButton(),
                SizedBox(width: size_phone.defualtsize!*13,),
                Text('Cart'),
              ],),
              Expanded(
                child: Container(
                  child: ListView.separated(itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                       setState(() {
                         select=index;
                         print(select);
                       });
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: size_phone.defualtsize!*2,right:  size_phone.defualtsize!*2),
                            width:select==index?size_phone.width!- size_phone.defualtsize!*12:size_phone.width!- size_phone.defualtsize!*5,
                            padding: EdgeInsets.only(top: size_phone.defualtsize!*2,bottom:  size_phone.defualtsize!*2,right:  size_phone.defualtsize!*2),
                            decoration: BoxDecoration(
                        color: Color(0xFFE5E2E2),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                              CircleAvatar(backgroundImage: AssetImage(imag[index]),
                              maxRadius: size_phone.defualtsize!*3,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Text('Viggie tommat mix'),Text('#190\$',style: TextStyle(color: kingColor))],),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: kingColor,
                                ),
                                width: size_phone.defualtsize!*5,
                                padding: EdgeInsets.all(3),

                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround
                                  ,
                                  children: [Text('-',style: TextStyle(color: Colors.white),),
                                Text('$index',style: TextStyle(color: Colors.white)),
                                    Text('+',style: TextStyle(color: Colors.white))],),)
                            ],),
                          ),
                          if(select==index)
                            CircleAvatar(
                              backgroundColor:kingColor ,
                              child: Icon(Icons.heart_broken_rounded,color: Colors.white,),
                            )
                        ],
                      ),
                    );
                  },
                      separatorBuilder:  (context,index){
                    return SizedBox(height: 20,);
                  }, itemCount: 3),
                ),
              )
            ],
          ),
        ));
  }
}
