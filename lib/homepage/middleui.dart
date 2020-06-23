
import 'package:flutter/material.dart';

class MiddleUI extends StatefulWidget {
  @override
  _MiddleUIState createState() => _MiddleUIState();
}

class _MiddleUIState extends State<MiddleUI> {
  Color lightshadow =Color(0xffc6c6c6);
  Color darkshadow=Color(0xffc6c6c6);
  String indoorScale="F";
  int indoorTemp=73;
  double indoorTemperature=73.0;
  void changeScale(){
    setState(() {
      if(indoorScale=='F'){
         
      indoorTemperature=(indoorTemperature-32)*5/9;
        
        indoorScale="C";
        indoorTemp=indoorTemperature.toInt();
      }
      else{
        
       indoorTemperature=(indoorTemperature*(9/5))+32;
        
       indoorScale="F"; 
       indoorTemp=indoorTemperature.toInt();    
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Stack
        (children:
            [
        Container(
           height: 300,
           width: 300,
        decoration: BoxDecoration
        (
          
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
          shape: BoxShape.circle,
          color: Color(0xffF7F8FD),
        ),
              ),
              Positioned
              (
                left: 75,
                top: 75,
               child: Container
                (
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration
                  ( 
                    gradient: LinearGradient
                    (
                      stops: [0,1],
                      begin:Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: 
                      [
                        Colors.yellow,
                        Colors.deepOrange
                      ]
                      ),
                    shape: BoxShape.circle,
                    color: Colors.orange,
         
        ),
                ),
              ),
               Positioned(
                    top: 120,
                    left: 95,
                    child: Text("$indoorTemp°$indoorScale",
                    style: TextStyle
                    ( 
                      fontWeight: FontWeight.w600,
                      fontSize:50,
                      color: Colors.white
                    ),
                    ),
                  ),
              Positioned(
                bottom: 80,
                right: 25,
               child: InkWell(
                 onTap: (){
                   changeScale();},
                                child: Container
                  (
                    height: 50,
                    width: 50,
        decoration: BoxDecoration
        (
          gradient: LinearGradient
          (
            stops: [0,1],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: 
            [ 
                    Color(0xffD3D7E3),
                    //Color(0xffe2e2e2),
                    Color(0xffffffff),
            ]
            ),
          shape: BoxShape.circle,
          color: Colors.grey[100],
          
        ),

                  ),
               ),
              ),
            ]
      ),
    );
  }
}

