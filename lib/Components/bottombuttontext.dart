import 'package:flutter/material.dart';
import 'values.dart';




class Bottombutton extends StatelessWidget {
  Bottombutton({ this.bottomtext,this.ontap});
  final String? bottomtext;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child:
      Container(
        alignment: Alignment.center,

        color:Kbottoncolorcontainer,
        margin: const EdgeInsets.only(top:10.0),
        padding: EdgeInsets.only(bottom:5.00),
        width: double.infinity,
        height: Kbottonappbarheight,
        child: Text(bottomtext!,style:Kbottomstyle,),

      ),
    );
  }
}


