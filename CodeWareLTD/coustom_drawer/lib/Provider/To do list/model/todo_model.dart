class ToDoModel {
  String? title;
  bool? isComplete;

  ToDoModel({required this.title, required this.isComplete});

  void isCompleted() {
    isComplete = !isComplete!;
  }
}
