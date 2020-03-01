import 'package:flutter/material.dart';
import 'package:sheq_flutter/screens/main_menu_screen.dart';
//import 'package:sheq_flutter/screens/registration_screen.dart';
//import 'package:sheq_flutter/screens/chat_screen.dart';
import 'package:sheq_flutter/screens/welcome_screen.dart';
import 'package:sheq_flutter/screens/menu_screen.dart';
import 'package:sheq_flutter/screens/menu_thrower_screen.dart';
import 'package:sheq_flutter/screens/profileScreen.dart';

import 'screens/menu_thrower_screen.dart';
import 'screens/menu_thrower_screen.dart';
import 'screens/menu_thrower_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MenuThrower.id,
      routes: {
        //WelcomeScreen.id: (context) => WelcomeScreen(),
        //MainMenuScreen.id: (context) => MainMenuScreen(),
        MenuThrower.id: (context) => MenuThrower(),
        MenuScreen.id: (context) => MenuScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
//        RegistrationScreen.id: (context) =>RegistrationScreen(),
//        ChatScreen.id: (context) => ChatScreen(),
//        LoginScreen.id: (context) => LoginScreen(),
//        Web3Screen.id: (context) => Web3Screen(),
      },
    );
  }
}

//TODO: Keep an eye on UpperCase for classes and Widgets and camelCase for other functions, const and others;
//TODO: let's keep the screens and components with the same name1_name2_screen format
//TODO: 2) navigation between screens, time to start building it
//TODO: 3) Authentication: EthereumAddress authentication using web3 dart package >> start trying to make it work
//TODO: 4) API to get prices of $DAI and $ETH >> can we connect to Uniswap ? https://uniswap.exchange/swap
