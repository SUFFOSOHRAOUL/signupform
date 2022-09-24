import 'package:flutter/material.dart';
import 'package:login/screens/homescreen.dart';
import 'package:login/screens/signuppage.dart';

import '../reuseablewidget.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController controller = TextEditingController();
  bool remember_me = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              //logo
              ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 30, 10, 15),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                reusableTextField('Email Adress', Icons.email_outlined, false,
                    controller, 'Email Adress'),
                SizedBox(height: 10.0),
                reusableTextField('password', Icons.lock_outline, true,
                    controller, 'password'),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.orange,
                          side: BorderSide(color: Colors.orange, width: 2.0),
                          value: remember_me,
                          onChanged: (bool? value) {
                            setState(() {
                              remember_me = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(fontSize: 23),
                      )
                    ],
                  ),
                ),
                signupButton('Login', context, () {
                  Navigator.push((context),
                      MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                })
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              children: [
                Text('Do you have an acount?',
                    style: TextStyle(color: Colors.black, fontSize: 15.0)),
                TextButton(
                  onPressed: () {
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
