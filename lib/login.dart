import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        // Add a Positioned widget to the logo container
        Positioned(
          top: 250, // Adjust the top value to move the logo down
          child: Container(
            height: 150, // Adjust the height of the logo container as needed
            width: 150, // Adjust the width of the logo container as needed
            alignment: Alignment.center, // Center the logo horizontally
            child: Image.asset("assets/logo.png"),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        inputStyle("Username", "Masukkan Username Anda"),
        SizedBox(
          height: 20,
        ),
        inputStyle("Password", "Masukkan Password Anda"),
        SizedBox(
          height: 20, // Adjust the spacing between input fields
        ),
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 72, 45, 18),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Belum Punya Akun?  ",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              TextSpan(
                text: "Register",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 90, 51, 7)),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pushNamed('/register');
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget inputStyle(String title, String hinTxt) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
      child: Row(
        children: [
          Text("$title :", style: TextStyle(fontSize: 20)),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 176, 85, 46).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: hinTxt,
                ),
              ),
            ),
          ),
        ],
      ));
}
