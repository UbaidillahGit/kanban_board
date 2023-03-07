
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/presentation/core/global/custom_loading.dart';
import 'package:kanban_board/presentation/core/global/label.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class TaskProperties extends StatelessWidget {
  const TaskProperties({super.key});
  static const listLabel = ['ui_ux', 'bug', 'feature', 'ui_ux', 'bug', 'feature', 'ui_ux', 'bug', 'feature'];
  static const ShapeBorder labelShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(13),
      topRight: Radius.circular(13),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  );

  static const ShapeBorder assignShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(5),
      topRight: Radius.circular(5),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  );

  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskBloc>(
      // create: (context) => getIt<TaskBloc>()..add(const ReqListCollaborator()),
      create: (context) => context.read<TaskBloc>()..add(const ReqListCollaborator()),
      child: BlocConsumer<TaskBloc, TaskState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalWidgets().text(
                txt: 'PROPERTIES',
                color: GlobalConstants.mainThemeColor,
              ),
              const SizedBox(height: 10),
              ExpansionTile( ///__________ [Label]
                iconColor: GlobalConstants.mainThemeColor,
                backgroundColor: Colors.grey[200],
                // trailing: state.,
                shape: labelShape,
                collapsedShape: labelShape,
                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                collapsedBackgroundColor: Colors.grey[200],
                title: Row(
                  children: [
                    const Icon(Icons.label, color: Colors.black),
                    const SizedBox(width: 10),
                    GlobalWidgets().text(txt: 'Label', fontWeight: FontWeight.w500),
                    const Spacer(),
                    LabelWidgets(labelId: state.labelId),
                  ],
                ),
                childrenPadding: const EdgeInsets.all(8.0),
                collapsedTextColor: Colors.red,
                expandedAlignment: Alignment.topLeft,
                // children: listLabel.map((e) => LabelWidgets(labelId: e)).toList(),
                children: <Widget>[
                  SizedBox(
                    width: double.maxFinite,
                    height: 40,
                    // child: GlobalWidgets().text(txt: 'Label', fontWeight: FontWeight.w500),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: listLabel
                      .map((e) => InkWell(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(height: 100, child: LabelWidgets(labelId: e)),
                          ),
                          onTap: () => context.read<TaskBloc>().add(ReqSelectLabel(e)),
                      )).toList(),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 3),

              ///_________[Assign]
              ExpansionTile(
                iconColor: GlobalConstants.mainThemeColor,
                backgroundColor: Colors.grey[200],
                shape: assignShape,
                collapsedShape: assignShape,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                collapsedBackgroundColor: Colors.grey[200],
                trailing: state.listCollaborator.isNotEmpty ? null : CustomLoading().basic(),
                title: Row(
                  children: [
                    const Icon(Icons.account_circle_outlined, color: Colors.black),
                    const SizedBox(width: 10),
                    GlobalWidgets().text(txt: 'Assign', fontWeight: FontWeight.w500),
                    const Spacer(),
                    GlobalWidgets().text(
                      txt: state.emailAssignee,
                      fontWeight: FontWeight.w500,
                      color: GlobalConstants.mainThemeColor,
                    ),
                  ],
                ),
                childrenPadding: const EdgeInsets.all(8.0),
                collapsedTextColor: Colors.red,
                expandedAlignment: Alignment.topLeft,
                children: state.listCollaborator.map((e) => InkWell(
                  onTap: () => context.read<TaskBloc>().add(ReqSelectAssignee(e)),
                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GlobalWidgets().text(txt: e.email ?? '-', ),
                ),
                )).toList(),
              ),
              const SizedBox(height: 3),
              Container(
                padding: const EdgeInsets.all(15.0),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.black
                    ),
                    const SizedBox(width: 10),
                    GlobalWidgets().text(
                      txt: 'Due Date',
                      fontWeight: FontWeight.w500,
                    ),
                    const Spacer(),
                    GlobalWidgets().text(
                      txt: 'Thu, Sep 24',
                      fontWeight: FontWeight.w500,
                      color: GlobalConstants.mainThemeColor,
                    ),
                    const Icon(
                      Icons.navigate_next_sharp,
                      color: GlobalConstants.mainThemeColor,
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
