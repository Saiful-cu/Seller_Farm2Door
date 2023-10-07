import 'package:flutter/material.dart';

// class CustomMyStyle extends StatelessWidget {
//    int fontSize;
//    Color textColor;
//    FontWeight fontWeight;

//    CustomMyStyle(this.fontSize, this.fontWeight, this.textColor);

//   @override
//   Widget build(BuildContext context) {
//     return TextStyle(
//       fontSize: fontSize;

//     );
//   }
// }

 // ignore: non_constant_identifier_names
 CustomMyStyle(double size, Color textColor, FontWeight fontWeight){
      return TextStyle(
          fontSize: size,
          color: textColor,
          fontWeight: fontWeight,

      );
   }