import 'package:flutter/material.dart';

class AddTodoScreen extends StatelessWidget {

  final Function onAdd;

  const AddTodoScreen({this.onAdd});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 28.0
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox( height: 15.0 ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
              controller: controller,
            ),
            SizedBox( height: 15.0 ),
            TextButton(
              onPressed: () {
                onAdd(controller.value.text);
              },
              child: Text(
                'Add',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}