import 'package:flutter/material.dart';

class MenuThrower extends StatelessWidget {
  static const String id = 'menu_thrower';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          actions: <Widget>[
            IconButton(
              onPressed: () => {Navigator.pushNamed(context, 'menu_screen')},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 40.0,
              ),
            )
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                    child: Image.asset('images/SHEQ_gold_ID.png', width: 200)),
              )
            ],
          ),
        )
        //{
        //Navigator.pushNamed(context, MainMenuScreen.id);}
        );
  }
}
