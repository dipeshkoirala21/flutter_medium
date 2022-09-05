import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: Stack(
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 350,
              color: Colors.red,
            ),
            Positioned(
                top: 50,
                left: 100,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.black,
                ))
          ],
        ));
  }
}
