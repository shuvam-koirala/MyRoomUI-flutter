import 'package:flutter/material.dart';

class BottomUI extends StatefulWidget {
  @override
  _BottomUIState createState() => _BottomUIState();
}

class _BottomUIState extends State<BottomUI> {
  int outdoorTemp=45;
  String outdoorScale="C";
  double outdoorTemperature=45.0;
  Color background =  Color(0xfffbfbfb);
   void changeScale(){
    setState(() {
      if(outdoorScale=='F'){
         
        outdoorTemperature=(outdoorTemperature-32)*5/9;
        
        outdoorScale="C";
        outdoorTemp=outdoorTemperature.toInt();
      }
      else{
        
       outdoorTemperature=(outdoorTemperature*(9/5))+32;
        
       outdoorScale="F"; 
        outdoorTemp=outdoorTemperature.toInt();    
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container
    (
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration
      ( 
         shape: BoxShape.rectangle,
         borderRadius: BorderRadius.all(Radius.circular(23)),
          color: Color(0xffE4E4EF),
       boxShadow: 
       [
         BoxShadow(
            color:Colors.grey ,
            spreadRadius: -12.0,
            blurRadius: 12.0,
          ),
       ]

      ),
     child: Row
     (
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: 
       [
         InkWell(
           onTap: (){
             changeScale();
           },
                    child: Column
           (
             children: 
             [
               Text("OUTSIDE",
               style:TextStyle
               (
                 letterSpacing: 3,
                 fontWeight: FontWeight.bold,
                 fontSize: 10,
               ) ,
               ),
               SizedBox(height:5),
               Text("$outdoorTemp°",
               style:TextStyle
               (
                 fontWeight: FontWeight.w500,
                 fontSize: 40,
               ) ,
               ),
             ],
           ),
         ),
         Column
         (
           children: 
           [
             Text("HUMIDITY",
             style:TextStyle
             (
               letterSpacing: 3,
               fontWeight: FontWeight.bold,
               fontSize: 10,
             ) ,
             ),
             SizedBox(height:5),
             Row
             (
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                   Text("20",
             style:TextStyle
             (
               fontWeight: FontWeight.w500,
               fontSize: 40,
             ) ,
             ),
            
              Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Text("%",
             style:TextStyle
             (
                 fontWeight: FontWeight.w700,
                 fontSize: 18,
             ) ,
             ),
              ),
               ],
             )
            
           ],
         ),
       ],
     ), 
    );
  }
}