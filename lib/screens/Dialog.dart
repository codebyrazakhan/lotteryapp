import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  @override
  _DialogScreenState createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        title: Text(
          'Title',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ), // To display the title it is optional
        content: Text("""
Lorem Ipsum is simply dummy text of the 
printing and typesetting industry. 
Lorem Ipsum has been the industry's standard
"""), // Message which will be pop up on the screen
        // Action widget which will provide the user to acknowledge the choice

        actions: [
          RaisedButton(
            elevation: 0,
            // FlatButton widget is used to make a text to work like a button
            color: Colors.grey[300],
            textColor: Colors.black,
            onPressed:
                () {}, // function used to perform after pressing the button
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('CANCEL'),
            ),
          ),
          RaisedButton(
            elevation: 0,
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('ACCEPT'),
            ),
          ),
        ],
      ),
    );
  }
}
