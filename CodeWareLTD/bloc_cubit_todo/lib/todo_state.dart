part of 'todo_cubit.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {
  List<String> todos;

  TodoInitial({required this.todos});
}
