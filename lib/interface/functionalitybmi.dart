import 'dart:math';


 class Calculation {
  Calculation({required this.weight, required this.height});

  final int weight;
  final int height;

  double? _bmi;


  String Calculate() {
   // here we are converting the height in m from the cm
    _bmi = weight / pow(height/ 100, 2);
   return _bmi!.toStringAsFixed(1);
  }

  String getresult() {
   if (_bmi! >=  25 && _bmi!<= 29.9) {
    return 'OverWeight';
   }
   else if (_bmi! >= 18.5 && _bmi!<= 24.9) {
    return "Normal";
   }
   else if(_bmi!<18.5){
    return 'UnderWeight';
   }
   else {return'obese';}
  }

  String interpretation() {
   if (_bmi! >=  25 && _bmi!<= 29.9)  {
    return 'You have a higher than normal body weight.Try to exercise more.Good luck.';
   }
   else if (_bmi! >= 18.5 && _bmi!<= 24.9) {
    return 'You have a Normal body weight.Goodjob!';
   }
   else if (_bmi!<18.5) {
    return 'You have a lower than normal body weight.you can eat a bit more.Good luck.';
   }
   else{
    return 'OOPS! you are obesed.Try to exercise more and eat healthy food.Good luck.';

   }
  }


 //return 'OOPS! you are considered obesed.Try to exercise more and eat healthy food.Good luck.';


 }
