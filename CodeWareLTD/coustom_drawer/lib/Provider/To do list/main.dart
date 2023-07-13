import 'package:coustom_drawer/Provider/To%20do%20list/Provider/to_do_provider.dart';
import 'package:coustom_drawer/Provider/To%20do%20list/model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ToDoProvider())],
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageForTodo(),
    );
  }
}

class HomePageForTodo extends StatefulWidget {
  const HomePageForTodo({Key? key}) : super(key: key);

  @override
  State<HomePageForTodo> createState() => _HomePageForTodoState();
}

class _HomePageForTodoState extends State<HomePageForTodo> {
  final _textControll = TextEditingController();

  Future<void> _showDialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('To do list'),
            content: TextField(
              decoration: InputDecoration(hintText: 'Write to do'),
              controller: _textControll,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              TextButton(
                  onPressed: () {
                    if (_textControll.text.isEmpty) {
                      return;
                    }
                    context.read<ToDoProvider>().addToDoList(ToDoModel(
                        title: _textControll.text, isComplete: false));
                    _textControll.clear();
                    Navigator.pop(context);
                  },
                  child: Text('Submit'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ToDoProvider>(context);
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'To Do List',
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.blue,
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Colors.black12),
                  child: ListView.builder(
                    itemCount: provider.allToDoList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          onTap: () {
                            provider
                                .toDoStatsChange(provider.allToDoList[index]);
                          },
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          title: Text(
                            provider.allToDoList[index].title!,
                            style: TextStyle(
                                decorationColor: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                decoration:
                                    provider.allToDoList[index].isComplete ==
                                            true
                                        ? TextDecoration.lineThrough
                                        : null),
                          ),
                          leading: MSHCheckbox(
                            size: 30,
                            value: provider.allToDoList[index].isComplete!,
                            colorConfig:
                                MSHColorConfig.fromCheckedUncheckedDisabled(
                              checkedColor: Colors.blue,
                            ),
                            style: MSHCheckboxStyle.stroke,
                            duration: Duration(seconds: 2),
                            onChanged: (_) {
                              provider
                                  .toDoStatsChange(provider.allToDoList[index]);
                            },
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              provider
                                  .removeToDoList(provider.allToDoList[index]);
                            },
                            icon: Icon(Icons.delete_forever),
                          ));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _showDialog();
          },
        ));
  }
}
