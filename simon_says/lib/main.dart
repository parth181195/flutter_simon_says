import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyFirstWidget(),
    ));

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'hello world',
        ),
      ),
    );
  }
}
