import 'package:flutter/material.dart';
// here we are just  customized the floating button as per our requirement because we cant have the more than 1 floating button on the  single screen
class Circleicoin extends StatelessWidget {
  const Circleicoin({this.icon,this.onpressed});
  final IconData? icon;
  final Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      autofocus: true,
      onPressed:onpressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      elevation: 1.0,
      constraints: const BoxConstraints.tightFor(
        width:45,
        height:45,
      ),
      child: Icon(icon),
    );
  }

}
