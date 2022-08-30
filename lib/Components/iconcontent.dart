import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'values.dart';
class Iconcontents extends StatelessWidget {


  final IconData? icon;
  final String label;
  Iconcontents({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(icon,size: 80.0,color:Colors.white,) ,
        SizedBox(height:20.0),
         Text(label,style:Klabelstyle,),
      ],
    );
  }
}

