import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  @override
  void dispose() {
    titleTextEditingController.dispose();
    descriptionTextEditingController.dispose();
    super.dispose();
  }

  TextEditingController titleTextEditingController = TextEditingController();
  TextEditingController descriptionTextEditingController =
      TextEditingController();
  Task task = Task();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          return;
        }
        final shouldPop = await _showBackDialog() ?? false;
        if (shouldPop && context.mounted) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('New Task'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //Title field
                TextField(
                  maxLength: 15,
                  autofocus: true,
                  controller: titleTextEditingController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    suffixIcon: IconButton(
                        onPressed: () {
                          titleTextEditingController.clear();
                        },
                        icon: Icon(Icons.clear)),
                    border: OutlineInputBorder(),
                  ),
                ),
                //Description field
                TextField(
                  maxLength: 50,
                  controller: descriptionTextEditingController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    suffixIcon: IconButton(
                        onPressed: () {
                          descriptionTextEditingController.clear();
                        },
                        icon: Icon(Icons.clear)),
                    border: OutlineInputBorder(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Cancel Button
                    ElevatedButton(
                      onPressed: () async {
                        bool shouldPop = await _showBackDialog()??false;
                        if (shouldPop && context.mounted) {
                          Navigator.pop(context);
                        }
                      },
                      child: Text('Cancel'),
                    ),
                    //Save Button
                    ElevatedButton(
                      onPressed: () {
                        task.title = titleTextEditingController.text;
                        task.description =
                            descriptionTextEditingController.text;
                        Navigator.pop(context);
                      },
                      child: Text('Save'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showBackDialog() async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Cancel?'),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.pop(context, true);
            },
            child: Text('Yes'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context, false);
            },
            child: Text('No'),
          ),
        ],
        content: Text('Discard changes?'),
      ),
    );
  }
}
