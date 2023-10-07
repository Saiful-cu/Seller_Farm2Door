import 'package:seller/widget/custom_fromfield.dart';
import 'package:seller/widget/custom_mystyle.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                Text("Create A Free Account",
                    style: CustomMyStyle(
                        24, Colors.black, FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Enter information and register now!',
                  style: CustomMyStyle(
                      14, Colors.grey, FontWeight.normal),
                ),
                const SizedBox(
                  height: 20,
                ),
                
                Align(
                    
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Mobile Number/Email",
                      style: CustomMyStyle(
                          14, Colors.grey, FontWeight.normal),
                    )),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(),
                const SizedBox(
                  height: 18,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: CustomMyStyle(
                          14, Colors.grey, FontWeight.normal),
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
                  height: 12,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Confirm Password",
                      style: CustomMyStyle(
                          14, Colors.grey, FontWeight.normal),
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

                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const LogIn()));
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
                        "Signup",
                        style: CustomMyStyle(
                            14, Colors.white, FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                // CustomLogAndRegisterButton("Signup", () {
                //   Navigator.push(context, MaterialPageRoute(builder: (_)=> LogIn()));
                // }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: CustomMyStyle(
                          14, Colors.grey, FontWeight.normal),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LogIn()));
                      },
                      child: Text(
                        "Login",
                        style: CustomMyStyle(
                            14, Colors.orange, FontWeight.normal),
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
