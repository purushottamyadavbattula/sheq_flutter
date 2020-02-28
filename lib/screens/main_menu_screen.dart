import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  static const String id = 'main_menu_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sheq Logo here'),
      ),
      body: Center(
        child: Text('Body text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}

//main screen >> from login to main page
//user auth
//is user loged?