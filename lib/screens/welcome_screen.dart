import 'package:flutter/material.dart';
import 'package:sheq_flutter/constants.dart';


class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.indigo, end: Colors.yellow).animate(controller);
    controller.forward();
    controller.addListener((){
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage('images/SHEQ_gold_ID.png'),
            fit: BoxFit.fitWidth,
              )
          ),
       ),
      //TODO: Add button to go to MainMenuScreen(),
      //{
      //Navigator.pushNamed(context, MainMenuScreen.id);}
      );
  }
}

