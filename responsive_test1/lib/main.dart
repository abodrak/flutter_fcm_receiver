import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: HomePage(),

    );
  }
}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    print(MediaQuery.of(context).orientation);

    return Scaffold(
      body: Center(
        child: Text('responsive test'),
      ),
    );
  }
}

