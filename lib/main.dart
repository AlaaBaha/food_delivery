import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smallproduct/home/home_screen.dart';
import 'package:smallproduct/home/screen/search.dart';
import 'package:smallproduct/home/screen/card.dart';
import 'package:smallproduct/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     debugShowCheckedModeBanner: false,
     debugShowMaterialGrid: false,
     routes: {
       'home': (context) => home_screen(),
       'search':(context) => search(''),
       'card':(context) => card(),
     },
     home: splash(),
   );
  }

}
