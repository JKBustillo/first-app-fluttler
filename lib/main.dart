import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  MyStepper({Key key}) : super(key: key);

  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  List<Step> mySteps = [
    new Step(
      title: new Text("Step 1"),
      content: new Text("Learn Flutter")
    ),
    new Step(
      title: new Text("Step 2"),
      content: new Text("Develop App")
    ),
    new Step(
      title: new Text("Step 3"),
      content: new Text("Deploy App")
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Stepper")
       ),
       body: new Container(
         child: new Stepper(
           currentStep: this._currentStep,
           steps: mySteps,
           onStepContinue: () {
             setState(() {
               if (_currentStep < mySteps.length-1) {
                 _currentStep++;
               } else {
                 _currentStep = 0;
               }
             });
           },
           onStepCancel: () {
             setState(() {
               if (_currentStep > 0) {
                 _currentStep--;
               } else {
                 _currentStep = mySteps.length-1;
               }
             });
           },
         ),
       ),
    );
  }
}