import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomFormField({String? title, String? hint, controller,}){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children:[
      TextFormField(
              decoration: InputDecoration(
                enabled: true,
                
                enabledBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.black),

                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                  
                )
              ),
            )

    ]

   );
}

// ignore: non_constant_identifier_names
CustomFormFieldPassword(bool isClick, onPressed){
  return  TextFormField(
              autofocus: false,
              obscureText: isClick,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: onPressed, icon: const Icon(Icons.remove_red_eye)),
                enabled: true,
                
                enabledBorder: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.black),

                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                  
                )
              ),
            );
}