import 'package:flutter/material.dart';
import 'package:ludoish/user_details_screen.dart';
import 'colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 150, 50, 150),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: primaryColor2,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOutlinedButton(
                    context,
                    'assets/fa-brandsfacebook-messenger.png',
                    'LOGIN IN WITH FACEBOOK',
                    'You cannot add post thorugh facebook via Ludoish',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          color: buttonBorder.withOpacity(0.7),
                        )),
                        Text(
                          '    OR    ',
                          style: TextStyle(
                              color: accentYellow, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          color: buttonBorder.withOpacity(0.7),
                        )),
                      ],
                    ),
                  ),
                  buildOutlinedButton(
                    context,
                    'assets/nameTag.png',
                    'PLAY AS GUEST',
                    'You cannot access many features of Ludoish',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOutlinedButton(
      BuildContext context, String image, String title, String desc) {
    return OutlinedButton(
      onPressed: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => UserDetailsScreen(),
        ),
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            style: BorderStyle.solid,
            color: accentYellow,
            width: 2.0,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              width: 20,
              image: AssetImage(image),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: accentOrange,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
