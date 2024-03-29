import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyAlert(),
  ));
}

class MyAlert extends StatefulWidget {
  MyAlert({Key key}) : super(key: key);

  @override
  _MyAlertState createState() => _MyAlertState();
}

enum DialogAction {
  yes,
  no
}

class _MyAlertState extends State<MyAlert> {
  String _inputValue = "";

  void _alertResult(DialogAction action) {
    print("Your selection is: $action");
  }

  void _showAlert(String value) {
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: <Widget>[
        new FlatButton(onPressed: () { _alertResult(DialogAction.yes); }, child: new Text("Yes"),),
        new FlatButton(onPressed: () { _alertResult(DialogAction.no); }, child: new Text("No"),),
      ],
    );

    showDialog(context: context, child: dialog);
  }

  void _onChanged(String value) {
    setState(() {
      _inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Demo Alert Dialog")
       ),
       body: new Container(
         child: new Center(
           child: new Column(
             children: <Widget>[
               new TextField(
                 decoration: new InputDecoration(
                   hintText: "Type something"
                 ),
                 onChanged: (String value) { _onChanged(value);},
               ),
               new RaisedButton(
                 child: new Text("See alert"),
                 onPressed: () {_showAlert(_inputValue);},
               )
             ],
           ),
         ),
       ),
    );
  }
}