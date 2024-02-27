import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loan App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String Mytest = 'this ite test';
  void _chageText() {
    setState(() {
      if (Mytest.startsWith("t")) {
        Mytest = 'Text is change';
      } else {
        Mytest = 'this ite test';
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(Mytest),
            TextButton(
              child: Text("Click Btn"),
              onPressed: _chageText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MY bar'),
        ),
        body: _bodyWidget());
  }
}
