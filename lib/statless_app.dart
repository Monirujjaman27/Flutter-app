import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My test',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('appbar ttl'),
        ),
        body: new Center(child: Text('my body'),),
      ),
    );
  }
}