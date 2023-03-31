import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/core/config/size_phone.dart';
import 'package:dots_indicator/dots_indicator.dart';
class pageViewBorder extends StatefulWidget {
  PageController? pageController;


   pageViewBorder(PageController? this.pageController, {Key? key}) : super(key: key);

  @override
  State<pageViewBorder> createState() => _pageViewBorderState();
}

class _pageViewBorderState extends State<pageViewBorder> {

  @override
  Widget build(BuildContext context) {
    size_phone().init(context);

    return PageView(
      controller: widget.pageController,
children: [
page(context, 'asset/delivery.jpg', 'request food', 'your can be request the food easy'),
page(context, 'asset/request.png', 'delivery food', 'the food request arrived very fast'),
page(context, 'asset/recsiver.png', 'resciver food', 'thank you for trust you')
],
    );

  }

  page(BuildContext context,String image,String title,String sub_title){
    double? pagenum=widget.pageController!.hasClients?widget.pageController!.page:0;
    size_phone().init(context);
    return Container(
      margin:EdgeInsets.only(top: size_phone.defualtsize!*20) ,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: size_phone.defualtsize!*25,
                  width: size_phone.defualtsize!*25,
                  child: Image.asset(image,fit: BoxFit.contain,),
                ),
                boxsize(5),
                Text('$title',style: TextStyle(fontWeight: FontWeight.bold),),
                boxsize(1),
                Text(sub_title,style: TextStyle(fontWeight: FontWeight.bold),),
                boxsize(15),

                DotsIndicator(dotsCount: 3,
                  position: pagenum!,
                  decorator: DotsDecorator(
                    color: Colors.white,
                      activeColor: kingColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: kingColor,
                          )
                      )
                  ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
  boxsize(double val){
  return SizedBox(height:size_phone.defualtsize!*val);
  }
}
