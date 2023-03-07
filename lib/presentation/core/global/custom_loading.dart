import 'package:flutter/material.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';

class CustomLoading {
  basic({Color color = GlobalConstants.mainThemeColor}) {
    return SizedBox(
      width: 30,
      height: 30,
      child: CircularProgressIndicator(color: color.withOpacity(0.5)),
    );
  }
}

// class CustomLoading extends CircularProgressIndicator {
//   const CustomLoading({super.key,Color color = GlobalConstants.mainThemeColor }) : super(
//     color: color,

//   );
  
// }