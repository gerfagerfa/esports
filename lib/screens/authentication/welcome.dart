import 'package:flutter/material.dart';
import 'package:esports/utils/constants.dart';
import 'package:esports/shared/rounded_button.dart';
import 'package:esports/screens/authentication/login.dart';
import 'package:esports/screens/authentication/signup.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 64,
                          child: Image.asset(
                            "assets/icons/joystick.png",
                            color: Colors.white,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 32,
                      ),

                      Text(
                        "Welcome to\neSports",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              RoundedButton(
                text: "Log In",
                color: Colors.white12,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),

              SizedBox(
                height: 16,
              ),

              RoundedButton(
                text: "Sign Up",
                color: kPrimaryColor,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
              ),

            ],
          ),
        ),
      ), 
    );
  }
}