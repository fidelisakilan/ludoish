import 'package:flutter/material.dart';
import 'package:ludoish/colors.dart';
import 'package:ludoish/dashboard.dart';

class UserDetailsScreen extends StatefulWidget {
  @override
  _UserDetailsScreenState createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  var _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Your country name & Flag will be shown to other players when you play online multiplayer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: accentYellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: accentYellow,
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    focusColor: Colors.white,
                    value: _chosenValue,
                    //elevation: 5,
                    style: TextStyle(color: Colors.white),
                    icon: Tab(
                      icon: Image.asset(
                        'assets/evaarrow-down-fill.png',
                        fit: BoxFit.fitHeight,
                        scale: 2.5,
                      ),
                    ),
                    iconEnabledColor: Colors.black,
                    items: <String>[
                      'India',
                      'USA',
                      'Japan',
                      'Spain',
                      'China',
                      'Australia',
                      'Sweden',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            Tab(
                              icon: Image.asset(
                                'assets/whhworld.png',
                                scale: 2,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              value,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "Select Country",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.account_circle_outlined),
                  radius: 30,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Tab(
                        icon: Image.asset(
                          'assets/emojioneflag-for-japan.png',
                          scale: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: primaryColor2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Enter Name',
                      hintStyle: TextStyle(
                        color: accentOrange,
                      ),
                    ),
                    style: TextStyle(fontSize: 11, height: 1),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: accentYellow,
                    width: 4,
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,30,20,20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'SELECT PROFILE PICTURE',
                        style: TextStyle(
                          color: accentOrange,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: accentYellow,
                        width: 2,
                      )),
                      child: GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                          padding: const EdgeInsets.all(4.0),
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                          children: <String>[
                            'assets/whhworld.png',
                            'assets/whhworld.png',
                            'assets/whhworld.png',
                            'assets/whhworld.png',
                            'assets/whhworld.png',
                            'assets/whhworld.png',

                          ].map((String url) {
                            return GridTile(
                                child: Image.asset(url,scale: 1,));
                          }).toList()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Use the Facebook picture',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: accentOrange,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                  ),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: accentOrange,
                  onPrimary: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
