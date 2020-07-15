import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputValue = "";

  final TextEditingController controller = new TextEditingController();

  void onSubmitted(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Text Field Widget"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Write something"),
                onSubmitted: (String value) {onSubmitted(value);},
                controller: controller,
              ),
              new Container(
                padding: const EdgeInsets.all(10.0),
                child: new Text(inputValue)
              ),
            ],
          )
        ),
      ),
    );
  }
}