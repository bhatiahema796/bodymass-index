import 'package:flutter/material.dart';
class Deco extends StatelessWidget {
  Deco({ this.colour,  this.cardchild, this.onpressed});
  final Color? colour;
  final Widget? cardchild;
  final  Function()? onpressed; // this both are right
  //final VoidCallback? onpress;




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        //You may wrote wrong syntax as onTap:onTapFunction instead of onTap: () => onTapFunction

      onTap:onpressed,//right
      child: Container(
        child: cardchild,
        margin:const EdgeInsets.all(11.0),
       //N padding: EdgeInsets.only(right: 20.00),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: colour,

        ),
      ),
    );
  }
}
