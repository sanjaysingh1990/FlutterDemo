import 'package:flutter/material.dart';

class StepperCounterDemo extends StatefulWidget {
  @override
  _StepperCounterDemoState createState() => _StepperCounterDemoState();
}

class _StepperCounterDemoState extends State<StepperCounterDemo> {
  final topAppBar = AppBar(
    title: new Text("Stepper"),
    backgroundColor: Colors.indigo,
    centerTitle: true,
  );

  int stepperCounter = 0;
  List<Step> steps = [
    Step(
      title: new Text("Step First"),
      content: new Text("This is First Step"),
      isActive: true,
    ),
    Step(
      title: new Text("Step Second"),
      content: new Text("This is Second Step"),
      isActive: true,
    ),
    Step(
      title: new Text("Step Third"),
      content: new Text("This is Third Step"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topAppBar,
      body: new Container(
        child: Stepper(
          steps: steps,
          currentStep: this.stepperCounter,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              stepperCounter = step;
            });
          },
          onStepCancel: () {
            setState(() {
              stepperCounter > 0
                  ? (stepperCounter = stepperCounter - 1)
                  : stepperCounter = 0;
            });
          },
          onStepContinue: () {
            setState(() {
              stepperCounter < steps.length - 1
                  ? stepperCounter = stepperCounter + 1
                  : stepperCounter = 0;
            });
          },
        ),
      ),
    );
  }
}
