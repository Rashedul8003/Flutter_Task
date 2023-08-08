import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todo_state.dart';

class Todo {
  static List<String> data = ['a', 'b'];
}

class TodoCubit extends Cubit<TodoInitial> {
  TodoCubit() : super(TodoInitial(todos: Todo.data));

  addNewTodo(String todoo) {
    final todolist = state.todos;
    todolist.add(todoo);
    emit(TodoInitial(todos: todolist));
  }

  deleteTodo(int index) {
    final todolist = state.todos;
    todolist.removeAt(index);
    emit(TodoInitial(todos: todolist));
  }
}
