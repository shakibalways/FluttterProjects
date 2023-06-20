import 'package:flutter/material.dart';
import 'package:food/view/favorite_screen.dart';
import 'package:food/view/food_screen.dart';
import 'package:food/view/login.dart';
import 'package:food/view/register.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
initialRoute: "login",
      routes: {
        "login":(context)=>MyLogin(),
        "register":(context) => MyRegister(),
        "food_screen":(context) => FoodScreen(),
        "favorite_screen":(context) => FavoriteScreen(),
      },
     
      
      
    );
  }
}