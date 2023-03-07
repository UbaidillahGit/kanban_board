extension StringExt on String {
  String boardName() {
    if (this == 'to_do') {
      return 'To Do';
    } else if (this == 'in_progress') {
      return 'In Progress';
    } else if (this == 'done') {
      return 'Done';
    }

    return '-';
  }
}