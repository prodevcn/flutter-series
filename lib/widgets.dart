import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // child: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.up,
            children: [
              Container(
                // width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                // width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                // width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
          // ),
        ));
  }
}
