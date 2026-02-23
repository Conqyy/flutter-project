import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/extensions/nav.dart';
import 'package:flutter_project/extensions/screensize.dart';
import 'package:flutter_project/screens/signin.dart';
import 'package:flutter_project/service/database.dart';
import 'package:flutter_project/widgets/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "معاون",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorsKH.mainColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
        child: Center(
          child: Container(
            width: context.screenWidth - 70,
            height: context.screenHeight,
            decoration: BoxDecoration(
              color: ColorsKH.signColor,
              boxShadow: [
                BoxShadow(
                  color: ColorsKH.signColor,
                  blurRadius: 100,
                  spreadRadius: 40,
                ),
              ],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text(
                    "سجل دخولك",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFieldWidget(
                    hint: "سجل ايميلك",
                    icon: Icon(Icons.email),
                    controller: emailController,
                  ),
                  TextFieldWidget(
                    hint: "سجل كلمة السر",
                    icon: Icon(Icons.password_outlined),
                    controller: passwordController,
                    isObscure: true,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await Database().signUp(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      emailController.dispose();
                      passwordController.dispose();
                      context.pushAndDelete(SignIn());
                    },
                    child: Text("سجل دخولك"),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushAndDelete(SignIn());
                    },
                    child: Text("عندك حساب؟ سجل دخولك"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: SignUp()));
}
