import 'package:flutter/material.dart';

class Active1 extends StatelessWidget {
  const Active1({Key? key}) : super(key: key);

  final titleForAc1 = 'This is Active 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleForAc1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) =>
                              Active2('This is For Active 2')));
                },
                child: Text('Ac 1 To Ac 2')),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Active3()));
                },
                child: Text('Ac 1 To Ac 3')),
          ],
        ),
      ),
    );
  }
}

class Active2 extends StatelessWidget {
  final titleForAc2;
  const Active2(this.titleForAc2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleForAc2),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text('Back Ac 1'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Active1()));
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Active3()));
              },
              child: Text('Back Ac 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class Active3 extends StatelessWidget {
  const Active3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Active3'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Active1()));
            },
            child: Text('Back Ac 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => Active2('This is For Active 2')));
            },
            child: Text('Back Ac 2'),
          ),
        ],
      )),
    );
  }
}
