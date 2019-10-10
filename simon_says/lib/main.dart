import 'package:flutter/material.dart';

void main() => runApp(MyFirstWidget());

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello world', textDirection: TextDirection.ltr,),
    );
  }
}
