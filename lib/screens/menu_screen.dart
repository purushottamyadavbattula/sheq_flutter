import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheq_flutter/constants.dart';

class MenuScreen extends StatelessWidget {
  static const String id = "menu_screen";

  Widget MenuItem(IconData icon, String text, Function pressed) {
    return FlatButton(
      onPressed: pressed,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 40,
          ),
          Icon(
            icon,
            color: Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(text)
        ],
      ),
    );
  }

  Widget line() {
    return SizedBox(
      width: 200,
      child: Divider(
        color: Colors.grey.shade400,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: kEggplant,
                  child: IconButton(
                    onPressed: () => {Navigator.pop(context)},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Image.asset(
                        'images/title-logo.png',
                        width: 80,
                        height: 100,
                      ),
                    ),
                    MenuItem(Icons.search, "SEARCH", () => {}),
                    line(),
                    MenuItem(Icons.perm_identity, "PROFILE", () => {}),
                    MenuItem(Icons.show_chart, "PORTFOLIO", () => {}),
                    MenuItem(Icons.account_balance_wallet, "WALLETS", () => {}),
                    MenuItem(Icons.shopping_cart, "SHEQ SHOP", () => {}),
                    line(),
                    MenuItem(Icons.lightbulb_outline, "POST NEW", () => {}),
                    MenuItem(Icons.remove_red_eye, "STORY FEED", () => {}),
                    MenuItem(Icons.touch_app, "PROJECTS", () => {}),
                    line(),
                    MenuItem(
                        Icons.chat_bubble_outline, "FRIENDS/CHAT", () => {}),
                    MenuItem(Icons.record_voice_over, "SUPPORT", () => {}),
                    line(),
                    MenuItem(Icons.settings, "SETTINGS", () => {}),
                    MenuItem(Icons.exit_to_app, "LOGOUT", () => {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}