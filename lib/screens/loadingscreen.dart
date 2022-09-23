import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:login/screens/loginpage.dart';
import '../reuseablewidget.dart';

class loadingscreen extends StatefulWidget {
  const loadingscreen({Key? key}) : super(key: key);

  @override
  State<loadingscreen> createState() => _loadingscreenState();
}

class _loadingscreenState extends State<loadingscreen> {
  @override
  void loginscreen() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        (context),
        MaterialPageRoute(builder: (context) {
          return loginPage();
        }),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    loginscreen();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                  child: Row(
                children: [
                  Container(
                    child: logoWidget('assets/images/logo.png'),
                  ),
                ],
              )),
            ],
          ),
          Container(
            child: SpinKitCircle(
              color: Colors.orange,
              size: 80.0,
            ),
          )
        ],
      )),
    );
  }
}
