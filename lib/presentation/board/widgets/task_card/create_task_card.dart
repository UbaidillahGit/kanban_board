import 'package:flutter/material.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class CreateTaskCard extends StatelessWidget {
  const CreateTaskCard({
    super.key, required this.callback,
  });

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   context.router.push(DetailTaskRoute());
      // },
      onTap: callback,
      child: Card(
        elevation: 0,
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.add, color: Colors.grey[500]),
              GlobalWidgets().text(
                txt: 'Task',
                fontWeight: FontWeight.w600,
                color: Colors.grey[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
