
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';






final TextStyle messageTextStyle = TextStyle(
  fontSize: 22,
  color: Colors.blueAccent ,
);

void main(){
  runApp(FcmTestApp());
}

class FcmTestApp extends StatefulWidget {
  @override
  _FcmTestAppState createState() => _FcmTestAppState();
}

class _FcmTestAppState extends State<FcmTestApp> {


  FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

  String onMessage = '';
  String onResume = '';
  String onLaunch = '';
  String onBackgroundMessage = '';


  @override
  void initState() {

    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) {
        setState(() {
          onMessage = message.toString() ;
        });
        print('onMessage called: $message');
        return null ;
      },
      onResume: (Map<String, dynamic> message) {
        setState(() {
          onResume = message.toString() ;
        });
        print('onResume called: $message');
        return null ;

      },
      onLaunch: (Map<String, dynamic> message) {


        setState(() {
          onLaunch = message.toString() ;
        });

        print('onLaunch called: $message');

        return null ;

      },
      onBackgroundMessage: _backgroundMessageHandler
    );

    firebaseMessaging.getToken().then((token){
      print('FCM Token: $token');
    });

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text('onMessage : $onMessage' , style: messageTextStyle,),
              SizedBox(height: 20,),
              Text('onResume : $onMessage' , style: messageTextStyle,),
              SizedBox(height: 20,),
              Text('onLaunch : $onMessage' , style: messageTextStyle,),

            ],
          ),

        ),
      )
    );
  }
}

Future<dynamic> _backgroundMessageHandler(Map<String, dynamic> message) {
  print("_backgroundMessageHandler $message");



}
