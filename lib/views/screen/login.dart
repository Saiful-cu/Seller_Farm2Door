import 'package:seller/const/color.dart';
import 'package:seller/views/screen/nav/nav_bar.dart';
import 'package:seller/views/screen/register.dart';
import 'package:seller/widget/custom_fromfield.dart';
import 'package:seller/widget/custom_mystyle.dart';

import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 107,
                  width: 138,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/LOGO.png"),
                  )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text("Welcome Back!",
                    style: CustomMyStyle(24, Colors.black, FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Start Selling fresh product',
                  style: CustomMyStyle(14, Colors.grey, FontWeight.normal),
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Mobile Number/Email",
                      style: CustomMyStyle(14, Colors.grey, FontWeight.normal),
                    )),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(),

                const SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: CustomMyStyle(14, Colors.grey, FontWeight.normal),
                    )),
                const SizedBox(
                  height: 5,
                ),
                CustomFormFieldPassword(isClick, () {
                  setState(() {
                    isClick = !isClick;
                  });
                  // print(isClick);
                }),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey),
                    )),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const NavBarScreen()));
                  },
                  child: Container(
                    height: 54,
                    width: 400,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style:
                            CustomMyStyle(14, Colors.white, FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                //  CustomLogAndRegisterButton("Login", (){
                //       Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
                //  }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: CustomMyStyle(14, Colors.grey, FontWeight.normal),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Register()));
                      },
                      child: Text(
                        "Register Now",
                        style:
                            CustomMyStyle(14, Colors.orange, FontWeight.normal),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
