import 'package:flutter/material.dart';


class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        SizedBox(
          height: 200,
        )
        ,


        Padding(
          padding: const EdgeInsets.only(left:60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Ryerson University',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),),
              SizedBox(
                height: 5,
              ),
              Text('Toronto Canada' ,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.account_circle),

                  ),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    border: InputBorder.none,

                  ),

                ),
              ),
            ],


          ),
        ),
       Expanded(
         child: Container(
           height: 100,
         ),
       )
      ],
    );
  }
}

/**




**/