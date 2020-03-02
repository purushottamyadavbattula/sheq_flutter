import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sheq_flutter/constants.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = 'profile';

  Widget bottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.group,
            color: Colors.black,
          ),
          title: Text(
            'FRIENDS',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.trending_up,
            color: Colors.black,
          ),
          title: Text(
            'INVEST',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.trending_down,
            color: Colors.black,
          ),
          title: Text(
            'SPEND',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.live_tv,
            color: Colors.black,
          ),
          title: Text(
            'NEWS',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.compare_arrows,
            color: Colors.black,
          ),
          title: Text(
            'EXCHANGE',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
      ],
    );
  }

  //rating in profile
  Widget rating(int numberOfStars) {
    double sizeOfStar = 13;
    Widget starChecked = Icon(
      Icons.star,
      size: sizeOfStar,
      color: Colors.white,
    );
    Widget starUnchecked = Icon(
      Icons.star_border,
      size: sizeOfStar,
      color: Colors.white,
    );
    List<Widget> rating = [];
    for (int i = 0; i < numberOfStars; i++) {
      rating.add(starChecked);
    }
    if (numberOfStars < 5) {
      for (int i = 0; i < 5 - numberOfStars; i++) {
        rating.add(starUnchecked);
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rating,
    );
  }

  //Top profile profile
  Widget profilePic() {
    return Container(
      color: kPlum,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //verticalDirection: VerticalDirection.down,
        children: <Widget>[
//          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/user.jpg"),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              "Sarah James",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Text(
              "@Sarah",
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
          rating(3),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(
              Icons.settings,
              color: Colors.grey,
              size: 30,
            )),
            Expanded(
              child: Center(child: Image.asset('images/icon.png', width: 50)),
            ),
            IconButton(
              onPressed: () => {Navigator.pushNamed(context, 'menu_screen')},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 40.0,
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            profilePic(),
            //TODO write the compoentes of profile here
          ],
        )
        //{
        //Navigator.pushNamed(context, MainMenuScreen.id);}
        );
  }
}
