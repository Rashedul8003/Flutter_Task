import 'package:flutter/material.dart';

class SliverAppBarClass extends StatefulWidget {
  const SliverAppBarClass({Key? key}) : super(key: key);

  @override
  State<SliverAppBarClass> createState() => _SliverAppBarClassState();
}

class _SliverAppBarClassState extends State<SliverAppBarClass> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.all(7),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.blueGrey,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1161&q=80',
                  fit: BoxFit.fitWidth,
                ),
                title: Text(
                  'App Team CodeWare Ltd',
                ),
              ),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              ListTile(
                title: Text('One'),
                subtitle: Text('1'),
              ),
              ListTile(
                title: Text('Two'),
                subtitle: Text('2'),
              ),
              ListTile(
                title: Text('Three'),
                subtitle: Text('3'),
              ),
              ListTile(
                title: Text('Four'),
                subtitle: Text('4'),
              ),
              ListTile(
                title: Text('Five'),
                subtitle: Text('5'),
              ),
              ListTile(
                title: Text('Six'),
                subtitle: Text('6'),
              ),
              ListTile(
                title: Text('Seven'),
                subtitle: Text('7'),
              ),
              ListTile(
                title: Text('Nine'),
                subtitle: Text('9'),
              ),
              ListTile(
                title: Text('Ten'),
                subtitle: Text('10'),
              ),
              ListTile(
                title: Text('Eleven'),
                subtitle: Text('11'),
              ),
              ListTile(
                title: Text('Tweleve'),
                subtitle: Text('12'),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
