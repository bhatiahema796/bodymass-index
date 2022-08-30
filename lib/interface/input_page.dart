

import 'package:bodymass/interface/output .dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/deco.dart';
import '../Components/iconcontent.dart';
import '../Components/values.dart';
import '../Components/bottombuttontext.dart';
import 'package:bodymass/Components/Circleicon.dart';
import '../interface/functionalitybmi.dart';


enum Sex{
  male,female
}

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {



   Sex? selectedsex;
    int height=139;
    int weight=25;
    int age=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,

        title: const Text('BMI CALCULATOR'),
        leading: IconButton(onPressed: (){
        },
          icon: const Icon(Icons.view_headline_sharp),),
      ),
      body:Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget> [
              Expanded(
                  child: Deco(colour:selectedsex==Sex.male?Kactivecolor:Kinactivecolor,
                    cardchild:Iconcontents(
                        icon: FontAwesomeIcons.mars,label: "MALE"),
          //You may wrote wrong syntax as onTap:onTapFunction instead of onTap: () => onTapFunction
                   onpressed: (){
                      setState(() {
                        selectedsex=Sex.male;
                      });
                    } ,),

              ),

              Expanded(
                child:Deco(
                  colour:selectedsex==Sex.female?Kactivecolor:Kinactivecolor ,
                  cardchild:
                  Iconcontents(
                      icon: FontAwesomeIcons.venus,
                      label:'FEMALE'),
                    onpressed: (){
                    setState(() {
                      selectedsex=Sex.female;
                    });
                  } ,
                )


              ),
            ]
            ,)
            ,),
           Expanded(
            child:Deco(
              colour:Kactivecolor,
              cardchild:Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('HEIGHT',style:Klabelstyle,),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                       Text(height.toString(),

                        style:Knumberstyle),
                      const SizedBox(width: 1.0),
                      const Text(
                        'cm',
                        style: Klabelstyle,)
                    ],
                  ),
                 SliderTheme(data:SliderTheme.of(context).copyWith(
                     activeTrackColor: Colors.white,
                    inactiveTrackColor:Colors.white24,


                     thumbColor: const Color(0xFFEB1555),
                     thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.00),
                     overlayColor: const Color(0x30EB1555),
                     overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.00),
                 ),
                   child: Slider(
                     value: height.toDouble(),
                     min: 100,
                     max:250,


                   onChanged: (double newvalue)
                   { setState(() {
                     height=newvalue.round();
                   });
                   },
                   ),
                 )
                ]
                ,)
              ),
            ),
          Expanded(child: Row(
            children: <Widget> [
              Expanded(
                child:
                Deco(
                  colour: Kactivecolor, cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('WEIGHT',style: Klabelstyle,),
                    Text(weight.toString(),style: Knumberstyle,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Circleicoin(
                          icon: FontAwesomeIcons.minus,
                          onpressed: (){
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        // Circleicoin(icon:Icons.add)
                        const SizedBox(width: 10.0,),
                        Circleicoin(
                            icon:FontAwesomeIcons.plus,
                          onpressed: (){
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                    ],)
                  ],
                ),
                   ),
              ),
              Expanded(
                child:
                Deco(colour:Kactivecolor,
                  cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('AGE',style: Klabelstyle,),
                    Text(age.toString(),style: Knumberstyle,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Circleicoin(
                          icon: FontAwesomeIcons.minus,
                          onpressed: (){
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        // Circleicoin(icon:Icons.add)
                        const SizedBox(width: 10.0,),
                        Circleicoin(
                            icon:FontAwesomeIcons.plus,
                          onpressed: (){
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],)
                  ],
                ),

                ),
              )
            ]
            ,)
            
            ,),
          Bottombutton(bottomtext: 'CALCULATE YOUR BMI',
            ontap: (){
              Calculation cal = Calculation(weight: weight,height: height);

            Navigator.push(context,MaterialPageRoute(builder:(context)=>Output_page(
              bmicalculation: cal.Calculate(),
              bmiinterpretation:cal.interpretation() ,
              bmiresult:cal.getresult(),
            ))
            );
            },
          )

        ],

      )
    );
  }
}









