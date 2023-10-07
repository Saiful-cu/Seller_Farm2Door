import 'package:flutter/material.dart';

import 'custom_mystyle.dart';

// ignore: non_constant_identifier_names
CustomLogAndRegisterButton(String text, Function onPressed) {
  return InkWell(
    onTap: () {
      onPressed;
    },
    child: Container(
      height: 54,
      width: 400,
      decoration: BoxDecoration(
        color: const Color(0xff31CD6F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: CustomMyStyle(14, Colors.white, FontWeight.normal),
        ),
      ),
    ),
  );
}
