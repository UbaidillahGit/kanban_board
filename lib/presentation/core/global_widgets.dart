import 'package:flutter/material.dart';

class GlobalWidgets {
  Widget text({
    required String txt,
    Color? color = Colors.black,
    double size = 20,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
