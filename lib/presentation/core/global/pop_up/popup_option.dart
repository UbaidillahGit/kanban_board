import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class PopUpOption extends StatelessWidget {
  // PopUpOption({
  //   String title = 'Info',
  //   required String content,
  //   super.key,
  // }) : super(
  //         title: GlobalWidgets().text(
  //           txt: title,
  //           fontWeight: FontWeight.bold,
  //         ),
  //         content: GlobalWidgets().text(
  //           txt: content,
  //           fontWeight: FontWeight.w400,
  //           color: GlobalConstants.mainThemeColor,
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () {},
  //             child: GlobalWidgets().text(txt: 'Yes', fontWeight: FontWeight.w500),
  //           ),
  //           TextButton(
  //             onPressed: () {},
  //             child: GlobalWidgets().text(txt: 'No', fontWeight: FontWeight.w500),
  //           )
  //         ],
  //       );

  final String title;
  final String content;

  const PopUpOption({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: GlobalWidgets().text(
        txt: title,
        fontWeight: FontWeight.bold,
      ),
      content: GlobalWidgets().text(
        txt: content,
        fontWeight: FontWeight.w400,
        color: GlobalConstants.mainThemeColor,
      ),
      actions: [
        TextButton(
          onPressed: () => context.router.pop('yes'),
          child: GlobalWidgets().text(txt: 'Yes', fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: () => context.router.pop('no'),
          child: GlobalWidgets().text(txt: 'No', fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
