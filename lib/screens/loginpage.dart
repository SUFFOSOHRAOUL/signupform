import 'package:flutter/material.dart';

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
                      'Create Acount',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  reusableTextField(
                    'First name',
                    Icons.person_outline,
                    false,
                    controller,
                  ),
                  SizedBox(height: 10.0),
                  reusableTextField(
                    'Last name',
                    Icons.person_outline,
                    false,
                    controller,
                  ),
                  SizedBox(height: 10.0),
                  reusableTextField(
                    'Email Adress',
                    Icons.email_outlined,
                    false,
                    controller,
                  ),
                  SizedBox(height: 10.0),
                  reusableTextField(
                    'password',
                    Icons.lock_outline,
                    true,
                    controller,
                  ),
                  SizedBox(height: 10.0),
                  reusableTextField(
                    'Confirm password',
                    Icons.lock_outline,
                    true,
                    controller,
                  ),
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
                  signupButton('Sign Up', context, () {})
                ],
              ))
        ],
      )),
    );
  }
}
