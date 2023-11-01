import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();

  static inputStyle(String s, String t) {}
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 247, 245, 247),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(80, 80),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset("assets/logo.png", height: 160, width: 160),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        inputStyle("Username              ", "Masukkan Nama Anda"),
        inputStyle("Password              ", "Min. 8 Karakter"),
        inputStyle("Status                    ", "Ex. PNS, Mahasiswa"),
        inputStyle("No HP                    ", "Masukkan NO HP Anda"),
        SizedBox(
          height: 30,
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
            child: Text("Register",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 182, 133, 64),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Kembali ke Login",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
