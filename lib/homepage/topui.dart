import 'package:flutter/material.dart';
class TopUI extends StatefulWidget {
  @override
  _TopUIState createState() => _TopUIState();
}

class _TopUIState extends State<TopUI> {
  Color lightshadow =Color(0xffffffff);
  Color darkshadow=Color(0xffc6c6c6);
  @override
  Widget build(BuildContext context) {
    return Row
    ( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: 
      [
        Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Text
            (
              "Living Room",
              style: TextStyle
              (
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row
            ( mainAxisAlignment: MainAxisAlignment.start,
              children: 
              [
                Container
                (
                  height:10,
                  width: 10,
                  decoration: BoxDecoration
                  (
                    color: Color(0xff9cffce),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width:5),
                Text("Connected"),
              ],
            )
          ],
        ),
        Container
        (
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon
            (
              Icons.apps,
              size: 40,
              color:Colors.black
            ),
          ),
          decoration: BoxDecoration
          (
            color: lightshadow,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow
            (
             blurRadius: 24,
             color:darkshadow,
             offset: Offset(12,12),
            ),
            BoxShadow
            (
             blurRadius: 24,
              color: Color(0xffffffff),
              offset:Offset(-12,-12),
            ),
            ],
            gradient: LinearGradient
            (
              stops: [0,1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:
              [
                Color(0xffe2e2e2),
                Color(0xffffffff),
              ]
            )
          ),
          
        )
      ],
    );
  }
}