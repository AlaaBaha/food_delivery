import 'package:flutter/material.dart';
import 'package:smallproduct/splash/widgets/splashBody.dart';
class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: splashBody(),
    );
  }
}
