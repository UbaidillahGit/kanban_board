import 'package:flutter/material.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';

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

  loading({Color color = GlobalConstants.mainThemeColor}) {
    return SizedBox(
      width: 30,
      height: 30,
      child: CircularProgressIndicator(color: color.withOpacity(0.5)),
    );
  }
}
