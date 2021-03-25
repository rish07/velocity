import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: size.width,
              height: size.height * 0.12,
              color: kPrimaryOrange,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SvgPicture.asset(
                  "assets/logo.svg",
                  height: 40,
                  width: size.width * 0.1,
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
                vertical: size.height * 0.1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Center(
                      child: Image.asset("assets/login.png"),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Text(
                    "Login to\ncontinue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // TODO Implement Google Sign In
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(14, 14, 14, 1),
                                offset: Offset(0, 6),
                                blurRadius: 0)
                          ],
                          color: Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                            color: Color.fromRGBO(13, 13, 13, 1),
                            width: 2,
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset(
                              'assets/google.png',
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Login with Google',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(13, 13, 13, 1),
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
