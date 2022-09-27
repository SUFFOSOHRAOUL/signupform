import 'package:flutter/material.dart';
import 'package:login/screens/loginpage.dart';
import '../reuseablewidget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _firstName_controller = TextEditingController();
  TextEditingController _lastName_controller = TextEditingController();
  TextEditingController _email_controller = TextEditingController();
  TextEditingController _password_controller = TextEditingController();
  TextEditingController _confirmPassword_controller = TextEditingController();
  bool remember_me = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Dairy',
                        style: TextStyle(fontSize: 50.0, color: Colors.orange),
                      ),
                      Text(
                        'Market',
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ])),
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
                    reusableTextField('First name', Icons.person_outline, false,
                        _firstName_controller, 'First name'),
                    SizedBox(height: 10.0),
                    reusableTextField('Last name', Icons.person_outline, false,
                        _lastName_controller, 'Last name'),
                    SizedBox(height: 10.0),
                    reusableTextField('Email Adress', Icons.email_outlined,
                        false, _email_controller, 'Email Adress'),
                    SizedBox(height: 10.0),
                    reusableTextField('password', Icons.lock_outline, true,
                        _password_controller, 'password'),
                    SizedBox(height: 10.0),
                    reusableTextField('Confirm password', Icons.lock_outline,
                        true, _confirmPassword_controller, 'Confirm password'),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.3,
                            child: Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.orange,
                              side:
                                  BorderSide(color: Colors.orange, width: 2.0),
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
                    signupButton('Sign Up', context, () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _email_controller.text,
                              password: _password_controller.text)
                          .then((value) {
                        Navigator.push(
                          (context),
                          MaterialPageRoute(builder: (context) {
                            return loginPage();
                          }),
                        );
                      }).onError((error, stackTrace) {
                        print('errrroooor!!');
                        print(error);
                      });
                    }),
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
