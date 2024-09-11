import 'package:flutter/material.dart';
import 'package:laundry/cart.dart';
import 'package:laundry/check_page.dart';
import 'package:laundry/pages/home_page.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage (),
      routes:{
       '/home_page':(context) => HomePage(),
       '/check_page':(context) => Checkpage(),
       '/cart':(context) => Cartpage(),
      }
    );
  }
}