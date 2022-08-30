import 'package:bodymass/interface/output%20.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'output .dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.light(primary: Color(0xFF0A0E21)),//our primary color is not using in the new flutter version so that we are trying to replace that property with this way
          scaffoldBackgroundColor:const Color(0xFF0A0E21),


        // appBarTheme: AppBarTheme(color: Color(0xFF282C4F)),

      ),
 home: Inputpage(),


    );
  }
}


