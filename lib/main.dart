import "package:flutter/material.dart";
import 'homepage/homepage.dart';
void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color lightshadow =Color(0xffffffff);
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold
      (
        
        backgroundColor:lightshadow,
        body: SafeArea
        ( 
          child:MyRoomUI(),
        ),
      ),
    );
  }
}