import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
          centerTitle: true,
        ),
        body: Center(
            child: ElevatedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            Navigator.push(
                context2, MaterialPageRoute(builder: (_) => SecondPage()));
          },
        )));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
          centerTitle: true,
        ),
        body: Center(
            child: ElevatedButton(
          child: Text('Go to First Page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        )));
  }
}
