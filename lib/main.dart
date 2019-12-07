import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("handle tap"),
        ),
        body: Center(child: MyButtonWrapper()),
      );
}

class MyButtonWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              duration: Duration(microseconds: 500),
              content: Text("Tap"),
            ),
          );
        },
        child: MyButton(),
      );
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Theme.of(context).buttonColor,
        ),
        child: Text('My Button'),
      );
}
