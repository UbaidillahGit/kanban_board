import 'package:flutter/material.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class PopUpInfo extends AlertDialog {
  PopUpInfo({
    String title = 'Info',
    required String content,
    super.key,
  }) : super(
    title: GlobalWidgets().text(
      txt: title,
      fontWeight: FontWeight.bold,
    ),
    content: GlobalWidgets().text(
      txt: content,
      fontWeight: FontWeight.w400,
      color: GlobalConstants.mainThemeColor,
    ),
  );
}
