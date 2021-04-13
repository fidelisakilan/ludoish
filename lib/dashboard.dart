import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ludoish/colors.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    int coins = 4459;
    int light = 100;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: statusBarHeight,
            ),
            Divider(
              color: accentOrange,
              thickness: 2,
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle_outlined),
                    onPressed: () {},
                  ),
                  Row(
                    children: [
                      Tab(
                        icon: Image.asset(
                          'assets/ricoins-line.png',
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4,459',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white38,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Tab(
                        icon: Image.asset(
                          'assets/whhdiamonds.png',
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$light',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white38,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Divider(
              color: accentOrange,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(
                      'assets/evaskip-back-fill.png',
                      scale: 3,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image4.png',
                        scale: 5,
                      ),
                      Image.asset(
                        'assets/ludoish.png',
                        scale: 5,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), primary: primaryColor2),
                      child: Icon(
                        Icons.supervised_user_circle_outlined,
                        color: accentYellow,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), primary: primaryColor2),
                      child: Container(
                        child: Image.asset(
                          'assets/Group-1.png',
                          scale: 3.5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), primary: primaryColor2),
                      child: Container(
                        child: Image.asset(
                          'assets/gridiconsuser-add.png',
                          scale: 3.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: <Widget>[
                    gridComponent(
                      'PLAY ONLINE',
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/emojione-v1mobile-phone.png',
                            scale: 2,
                          ),
                          Image.asset('assets/fxemojiworldmap.png', scale: 2),
                          Image.asset('assets/emojione-v1mobile-phone.png',
                              scale: 2),
                        ],
                      ),
                    ),
                    gridComponent(
                      'PLAY WITH FRIENDS',
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/emojione-v1mobile-phone.png',
                            scale: 2,
                          ),
                          Image.asset('assets/emojione-v1heart-left-tip.png',
                              scale: 2),
                          Image.asset('assets/emojione-v1mobile-phone.png',
                              scale: 2),
                        ],
                      ),
                    ),
                    gridComponent(
                      'COMPUTER',
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/emojione-v1laptop-computer.png',
                            scale: 2,
                          ),
                        ],
                      ),
                    ),
                    gridComponent(
                      'PASS AND PLAY',
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/emojione-v1play-button.png',
                            scale: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: primaryColor2),
                  child: Container(
                    child: Image.asset(
                      'assets/bidice-3.png',
                      scale: 3.5,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: primaryColor2),
                  child: Container(
                    child: Image.asset(
                      'assets/icround-leaderboard.png',
                      scale: 3.5,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: primaryColor2),
                  child: Container(
                    child: Image.asset(
                      'assets/fluentdark-theme-24-regular.png',
                      scale: 3.5,
                    ),
                  ),
                ),
              ],
            ),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/elgift.png',
                        scale: 3,
                      ),
                      Text('REWARDS'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/mdiship-wheel.png',
                        scale: 3,
                      ),
                      Text('SPIN'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gridComponent(String content, Widget pic) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: accentYellow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: lightYellow,
              ),
              child: pic,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                content,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
