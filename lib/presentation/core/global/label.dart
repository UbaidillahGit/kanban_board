import 'package:flutter/material.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

// ignore: must_be_immutable
class LabelWidgets extends StatelessWidget {
  LabelWidgets({super.key, required this.labelId});
  final String labelId;
  late String labelName;
    late Color? colorBg;
    late Color? colorTxt;

  @override
  Widget build(BuildContext context) {

    if (labelId == 'ui_ux') {
      labelName = 'UI/UX';
      colorBg = Colors.green[100];
      colorTxt = Colors.green[600];
    } else if (labelId == 'bug') {
      labelName = 'Bug';
      colorBg = Colors.red[100];
      colorTxt = Colors.red[600];
    } else if (labelId == 'feature') {
       labelName = 'Feature';
      colorBg = Colors.blueGrey[100];
      colorTxt = Colors.blueGrey[600];
    } else {
      labelName = '-';
      colorBg = Colors.transparent;
      colorTxt = Colors.transparent;
    }

    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorBg,
      ),
      child: GlobalWidgets().text(
        txt: labelName,
        color: colorTxt,
        size: 15,
      ),
    );
  }
}
