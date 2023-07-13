import 'package:flutter/material.dart';

class ExpansionPanelClass extends StatefulWidget {
  const ExpansionPanelClass({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelClass> createState() => _ExpansionPanelClassState();
}

class _ExpansionPanelClassState extends State<ExpansionPanelClass> {
  bool isExpand = false;
  var colorrr = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Steps1(),

            /// this is a class call below
            Container(
              color: colorrr,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(50),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 1000),
                expansionCallback: (panIndex, isExp) {
                  print(isExp);
                  // while (isExp) {
                  //   colorrr = Colors.cyan;
                  // }
                  isExpand = !isExp;
                  if (isExp) {
                    colorrr = Colors.cyan;
                  } else {
                    colorrr = Colors.black12;
                  }
                  setState(() {});
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text('Flutter'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase'),
                    ),
                    isExpanded: isExpand,
                    canTapOnHeader: true,
                  )
                ],
              ),
            ),
            Container(
              color: colorrr,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(50),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 1000),
                expansionCallback: (panIndex, isExp) {
                  isExpand = !isExp;

                  setState(() {});
                  print(isExp);
                  // while (isExp) {
                  //   colorrr = Colors.cyan;
                  // }
                  if (isExp) {
                    colorrr = Colors.cyan;
                  } else {
                    colorrr = Colors.black12;
                  }
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text('Flutter'),
                      );
                    },
                    body: Text(
                        'Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase'),
                    isExpanded: isExpand,
                    canTapOnHeader: true,
                  )
                ],
              ),
            ),
            Container(
              color: colorrr,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(50),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 1000),
                expansionCallback: (panIndex, isExp) {
                  isExpand = !isExp;
                  setState(() {});
                  print(isExp);
                  // while (isExp) {
                  //   colorrr = Colors.cyan;
                  // }
                  if (isExp) {
                    colorrr = Colors.cyan;
                  } else {
                    colorrr = Colors.black12;
                  }
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text('Flutter'),
                      );
                    },
                    body: Text(
                        'Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase'),
                    isExpanded: isExpand,
                    canTapOnHeader: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// const Steps(),
// Scaffold er body modde just opoer ta call korlei hobe

class Step2 {
  Step2(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

List<Step2> getSteps() {
  return [
    Step2('Step 0: Install Flutter',
        'Install Flutter development tools according to the official documentation.'),
    Step2('Step 1: Create a project',
        'Open your terminal, run `flutter create <project_name>` to create a new project.'),
    Step2('Step 2: Run the app',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
  ];
}

class Steps1 extends StatefulWidget {
  const Steps1({Key? key}) : super(key: key);
  @override
  State<Steps1> createState() => _Steps1State();
}

class _Steps1State extends State<Steps1> {
  final List<Step2> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderSteps(),
      ),
    );
  }

  Widget _renderSteps() {
    return ExpansionPanelList(
      animationDuration: Duration(milliseconds: 1500),
      dividerColor: Colors.redAccent,
      expandIconColor: Colors.yellow,
      elevation: 12,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step2 step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(step.title),
            );
          },
          body: ListTile(
            title: Text(step.body),
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}
