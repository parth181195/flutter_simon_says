import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyFirstWidget(),
    ));

class MyFirstWidget extends StatefulWidget {
  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  List<String> says = [
    'thing 1',
    'thing 2',
    'thing 3',
    'thing 4',
    'thing 5',
    'thing 6',
    'thing 7',
  ];
  String get whatsays {
    int randomInt = Random().nextInt(says.length);
    print(randomInt);
    return says[randomInt];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Simon Says',
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  whatsays,
                  textAlign: TextAlign.center,
                ),
              ),
              RaisedButton(
                child: Text('New Says'),
                onPressed: () {
                  this.setState(() {});
                },
              )
            ]),
      ),
    );
  }
}
