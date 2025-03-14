import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/cubit/todo_cubit.dart';

class AddTodoPage extends StatelessWidget {
  AddTodoPage({super.key});
  TextEditingController txtEdtngController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add todo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: txtEdtngController,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<TodoCubit>().addTodo(txtEdtngController.text);
                  Navigator.pop(context);
                  // BlocProvider.of<TodoCubit>(context)
                  //     .addTodo(txtEdtngController.text);
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
