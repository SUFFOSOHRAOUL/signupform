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
        fillColor: Colors.grey.withOpacity(0.1),
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
