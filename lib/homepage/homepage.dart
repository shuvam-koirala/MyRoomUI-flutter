import 'package:flutter/material.dart';
import 'topui.dart';
import 'middleui.dart';
import 'bottonui.dart';

class MyRoomUI extends StatefulWidget {
  @override
  _MyRoomUIState createState() => _MyRoomUIState();
}

class _MyRoomUIState extends State<MyRoomUI> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column
      ( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: 
        [
          TopUI(),
          MiddleUI(),
          BottomUI(),
        ],
      ),
    );
  }   
}