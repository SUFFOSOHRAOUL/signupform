import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon, bool ispassword,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: ispassword,
    enableSuggestions: !ispassword,
    autocorrect: !ispassword,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.6)),
    decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.3),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35.0),
            borderSide: BorderSide(width: 0, style: BorderStyle.none))),
    keyboardType:
        ispassword ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
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

Container signupButton(String btnName, BuildContext context, Function Ontap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
    child: ElevatedButton(
      onPressed: () {
        Ontap();
      },
      child: Text(
        btnName,
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black;
            } else {
              return Colors.orange;
            }
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}
