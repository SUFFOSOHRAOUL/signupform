import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loadingscreen extends StatefulWidget {
  const loadingscreen({Key? key}) : super(key: key);

  @override
  State<loadingscreen> createState() => _loadingscreenState();
}

class _loadingscreenState extends State<loadingscreen> {
  @override
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

Image logoWidget(String logoname) {
  return Image.asset(
    logoname,
    fit: BoxFit.fitWidth,
    width: 100,
    height: 100,
    color: Colors.orange,
  );
}
