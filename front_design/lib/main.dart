import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_design/pages/registration.dart';

void main(){

  runApp(MainApp());
  
}


class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: HomePage(),
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Flexible(
          flex: 1,

          child: RegistrationPage(),
        ),
        Flexible(

          flex: 2,
          child:Stack(
            children: <Widget>[
              Positioned(
                top: 10,
                right: 80,
                child: Text('Ryreson Info'),
              ),
              SvgPicture.asset('uli/uli.svg'),
              Positioned(
                bottom: 10,
                right: 80,
                child: Text('Student Center',style: TextStyle(
                  fontSize: 30,
                  color: Colors.black.withOpacity(.7),

                ),),
              ),
            ],
          )
        ),
      ],

    );
  }
}


