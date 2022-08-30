import 'package:bodymass/Components/deco.dart';
import 'package:bodymass/Components/values.dart';
import 'package:flutter/material.dart';
import '../Components/bottombuttontext.dart';


 class Output_page extends StatelessWidget {
   Output_page({required this.bmicalculation,required this.bmiinterpretation,required this.bmiresult});
   final String bmicalculation;
   final String bmiresult;
   final String bmiinterpretation;



   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(centerTitle: true,
         title: Text('BMI CALCULATOR'),
       ),
       body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Expanded(
               child: Container(margin: EdgeInsets.all( 10.0),
                   child: Text('Your Result ',
                     style:Knumberstyle,
                   ),
               ),
           ),
           Expanded(flex:8,
             child:Deco(
               colour: Kactivecolor,
               cardchild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Text(bmiresult.toUpperCase(),
                       style: Kresstyle),
                   Text(bmicalculation,
                       style:Kbmistyle),
                   Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Column(
                       children: [
                       Text('Normal BMI range :',style:
                       Knormal,),
                       SizedBox(height: 10,),
                       Text('18.9-24.9 kg/m2',
                         style: TextStyle(fontSize: 25),),
                     ],)
                   ],),
                   Text(bmiinterpretation,
                     style: Kstatementstyle,
                   textAlign: TextAlign.center,)
               ],
               ),
               ),
             ),
           Bottombutton(bottomtext:'RE-CALCULATE YOUR BMI',
             ontap: (){
             Navigator.pop(context);
             },
           ),
         ],
     ),
     );
   }
 }
