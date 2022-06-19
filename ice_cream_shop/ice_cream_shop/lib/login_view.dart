import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'registrasi.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 111, 161),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/icecreamstore.png',
                  fit: BoxFit.cover,
                  height: 200,
                  width: 300,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              const Text('Username',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Email Anda"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text('Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Password Anda"),
              ),
              const SizedBox(height: 30.0),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  width: double.infinity,
                  child: RaisedButton(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    textColor: Colors.white,
                    color: Color.fromARGB(255, 204, 142, 163),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {
                      signIn();
                    },
                    child: Text("Login"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Tidak Punya Akun ?",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  InkWell(
                    onTap: (() {
                      Get.to(RegisterPage());
                    }),
                    child: Text(
                      " Register",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    try {
      Get.defaultDialog(
        title: "Login Berhasil",
        middleText: "Selamat Datang di Ice Cream Shop",
        onConfirm: () => Get.back(),
        textConfirm: 'Oke',
        backgroundColor: Color.fromARGB(255, 92, 111, 161),
        buttonColor: Color(0xFF023E4A),
      );
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      Get.defaultDialog(
        title: 'Terjadi Kesalahan',
        middleText: e.message.toString(),
        onConfirm: () => Get.back(),
        textConfirm: 'Oke',
        backgroundColor: Color.fromARGB(255, 92, 111, 161),
        buttonColor: Color(0xFF023E4A),
      );
    }

    Get.to(Home());
  }
}
