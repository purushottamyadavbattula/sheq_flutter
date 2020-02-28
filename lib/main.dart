import 'package:flutter/material.dart';
import 'package:sheq_flutter/screens/main_menu_screen.dart';
import 'package:sheq_flutter/screens/registration_screen.dart';
import 'package:sheq_flutter/screens/chat_screen.dart';
import 'package:sheq_flutter/screens/welcome_screen.dart';
import 'package:sheq_flutter/screens/main_menu_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MainMenuScreen.id: (context) => MainMenuScreen(),
//        RegistrationScreen.id: (context) =>RegistrationScreen(),
//        ChatScreen.id: (context) => ChatScreen(),
//        LoginScreen.id: (context) => LoginScreen(),
//        Web3Screen.id: (context) => Web3Screen(),

      },
    );
  }
}
