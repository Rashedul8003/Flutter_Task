import 'package:flutter/material.dart';

class StepperClass extends StatefulWidget {
  const StepperClass({Key? key}) : super(key: key);

  @override
  State<StepperClass> createState() => _StepperClassState();
}

class _StepperClassState extends State<StepperClass> {
  int _curentStep = 0;
  int _curentValue = 0;
  List<Step> steplist() => [
        Step(
            isActive: _curentStep >= 0,
            title: Text('Your level one'),
            content: Center(
              child: Text('you are in step 1'),
            )),
        Step(
            isActive: _curentStep >= 1,
            title: Text('Step 2'),
            content: Center(
              child: Text('you are in step 2'),
            )),
        Step(
            isActive: _curentStep >= 2,
            title: Text('Step 3'),
            content: Center(
              child: Text('you are in step 3'),
            )),
        Step(
            isActive: _curentStep >= 3,
            title: Text('Step 4'),
            content: Center(child: Text('you are in step 4'))),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stepper(
      // type: StepperType.horizontal,
      // you can vertical and horizontal
      currentStep: _curentStep,
      // ata holo kon step ta dekhabe ta mention kore index onojai
      onStepTapped: (int value) {
        //_curentStep = value;
        // _curentValue = value;
        setState(() {});
        print(value);
      },
      onStepContinue: () {
        if (_curentStep < (steplist().length - 1)) {
          _curentStep += 1;
          setState(() {});
        }
      },
      onStepCancel: () {
        if (_curentStep > 0) {
          _curentStep -= 1;
          setState(() {});
        }
      },
      steps: steplist(),
    ));
  }
}
