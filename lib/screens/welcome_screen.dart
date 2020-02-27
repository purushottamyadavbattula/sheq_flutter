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
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: kdarkBeige, end: Colors.white).animate(controller);
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
    return MaterialApp(
        home: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [klightBeige, kdarkBeige],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,)
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 200,),
                    Image.asset('images/SHEQ_gold_ID.png')
                  ],
                ),
              ),
            )
        )
    );
  }
}
