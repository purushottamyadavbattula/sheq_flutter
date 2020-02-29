import 'package:flutter/material.dart';
//import 'package:sheq_flutter/constants.dart';

class MainMenuScreen extends StatelessWidget {
  static const String id = 'main_menu_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Image.asset('images/title-logo.png'),
      ),
      body: Container(
        color: Colors.purple.shade100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(children: <Widget>[
              Icon(Icons.accessibility_new),
              Text('Friends'),
            ],
            ),
            Column(children: <Widget>[
              Icon(Icons.touch_app),
              Text('Invest'),
            ],),
            Column(children: <Widget>[
              Icon(Icons.shopping_cart),
              Text('Spend'),
            ],),
            Column(children: <Widget>[
              Icon(Icons.speaker_notes),
              Text('News'),
            ],),
            Column(children: <Widget>[
              Icon(Icons.swap_horizontal_circle),
              Text('Exchange'),
            ],),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.deepPurple.shade200,
        child: Icon(Icons.fingerprint),
      ),
    );
  }
}

//main screen >> from login to main page
//user auth
//is user loged?