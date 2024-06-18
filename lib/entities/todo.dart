class Todo {
  String title;
  String description;
  DateTime date;
  bool isDone;

  Todo(this.title, this.description, this.date, [this.isDone = false]);
}
