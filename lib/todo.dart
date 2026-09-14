class Todo{
  int id;
  String title;
  bool isDone;
static int _counter = 0;
Todo({required this.title}): isDone = false, id = ++_counter;
String get status => isDone ? 'выполнено' : 'в процессе';
  @override
  String toString() {
    String mark = isDone ? '[x]' : '[ ]';
    return '$mark $id. $title ($status)';
  }
  void complete() {
    isDone = true;
  }
}