import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  addTodo(String title) {
    if (title.isEmpty) {
      addError(
        "Title cannot be empty",
      );
      return;
    }
    final todo = Todo(name: title, createdAt: DateTime.now().toIso8601String());
    // state.add(todo);
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    log("CUBIT: $change");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError

    super.onError(error, stackTrace);
    log("CUBIT: $error");
  }
}
