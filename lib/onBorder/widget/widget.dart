import 'package:flutter/material.dart';
import 'package:smallproduct/core/config/size_phone.dart';

import '../../core/config/Color.dart';
class WidgetController extends StatelessWidget {
  size_phone size=size_phone();



  @override
  Widget build(BuildContext context) {
    size.init(context);
    // TODO: implement build
    return Container();
  }
}