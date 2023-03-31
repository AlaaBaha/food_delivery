import 'package:flutter/material.dart';

import 'widget/onBorder1Body.dart';
class onBorder1 extends StatelessWidget {
  const onBorder1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: onBorder1Body()),
    );
  }
}
