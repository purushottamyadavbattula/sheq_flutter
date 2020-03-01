import 'package:flutter/material.dart';
import 'package:sheq_flutter/components/reusable_card.dart';
import 'package:sheq_flutter/components/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheq_flutter/constants.dart';

class MainMenuScreen extends StatelessWidget {
  static const String id = 'main_menu_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kEggplant,
        title: Image.asset(
          'images/title-logo.png',
          width: 80,
          height: 100,
        ),
      ),
      body: Container(color: kEggplant,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              ReusableCard(
                  cardChild: IconContent(label:'ADD FUNDS', icon: FontAwesomeIcons.moneyBillAlt,),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'SEND RECEIVE', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'TERMS & TRANSFER', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'COINSWAP EXCHANGE',icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
            ],),
            Row(children: <Widget>[
              ReusableCard(
                  cardChild: IconContent(icon: FontAwesomeIcons.ethereum, label: 'ETHEREUM',),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'PROFILE HOME',icon: FontAwesomeIcons.addressCard),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'PRIVATE CALLING', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'POST NEW', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
            ],),
            Row(children: <Widget>[
              ReusableCard(
                  cardChild: IconContent(label:'SHEQ SHOP', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'SHEQ SEARCH', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'SHEQ HELPBOT', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
              ReusableCard(
                  cardChild: IconContent(label:'GLOBAL SETTINGS', icon: FontAwesomeIcons.exchangeAlt),
                  onPress: (){}),
            ],),
            SizedBox(height: 30,),
//            Image.asset('images/pink_graph2.jpg'),
          ],
        ),
      ),

      //TODO: 1) make the BottomNavigationBar show the 5 icons instead of 3
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: Colors.deepPurple),
            title: Text('Friends', style: TextStyle(color: Colors.deepPurple),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app, color: Colors.deepPurple),
            title: Text('Invest', style: TextStyle(color: Colors.deepPurple),),
          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.shopping_cart, color: Colors.deepPurple),
//            title: Text('Spend', style: TextStyle(color: Colors.deepPurple),),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.speaker_notes, color: Colors.deepPurple),
//            title: Text('News',style: TextStyle(color: Colors.deepPurple),),
//          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horizontal_circle, color: Colors.deepPurple),
            title: Text('Exchange',style: TextStyle(color: Colors.deepPurple),),
          ),
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){},
//        backgroundColor: Colors.deepPurple.shade200,
//        child: Icon(Icons.fingerprint),
//      ),
    );
  }
}

//main screen >> from login to main page
//user auth
//is user loged?