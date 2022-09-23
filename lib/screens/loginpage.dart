import 'package:flutter/material.dart';

import '../reuseablewidget.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController controller = TextEditingController();

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
                  )
                ],
              ))
        ],
      )),
    );
  }
}
