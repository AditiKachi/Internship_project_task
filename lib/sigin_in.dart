import 'package:flutter/material.dart';
import 'package:socialmedia_automation/dashboard.dart';
import 'package:socialmedia_automation/sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final EmailField = TextFormField(
      style: const TextStyle(
        fontFamily: "Times new roman",
        fontSize: 16.0,
        color: Colors.white,
      ),
      autofocus: false,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Enter Email",
          prefixIconColor: Colors.white,
          hintStyle: TextStyle(
            fontFamily: "Times new roman",
            fontSize: 13.0,
            color: Colors.white,
          )));

  final password = TextFormField(
      style: const TextStyle(
        fontFamily: "Times new roman",
        fontSize: 16.0,
        color: Colors.white,
      ),
      autofocus: false,
      obscureText: true,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock),
          prefixIconColor: Colors.white,
          hintText: "Enter Password",
          hintStyle: TextStyle(
              decorationColor: Colors.white,
              fontFamily: "Times new roman",
              fontSize: 13.0,
              color: Colors.white)));

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          alignment: Alignment.center,
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1])),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height / 7,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Times new roman",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              Container(
                  height: size.height / 15,
                  width: size.width / 1.3,
                  alignment: Alignment.center,
                  child: EmailField),
              SizedBox(
                height: size.height / 15,
              ),
              Container(
                  height: size.height / 15,
                  width: size.width / 1.3,
                  alignment: Alignment.center,
                  child: password),
              SizedBox(height: size.height / 10),
              CustomButton("LOGIN", context),
              SizedBox(height: size.height / 20),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignUpPage())),
                child: const Text(
                  "Sign up here",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Times new roman"),
                ),
              )
            ],
          )),
    ));
  }
}

Widget customTextField(
    TextEditingController cont, String hint, IconData icon, bool password) {
  return Container(
    width: 315,
    child: TextFormField(
      cursorColor: Colors.white,
      style: const TextStyle(
          color: Colors.white, fontSize: 15.0, fontFamily: "Times new roman"),
      controller: cont,
      obscureText: password,
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0)),
          hintText: hint,
          prefixIcon: Icon(icon),
          prefixIconColor: Colors.white,
          focusColor: Colors.white,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          hintStyle: const TextStyle(
            color: Colors.white70,
            fontSize: 15.0,
          )),
    ),
  );
}

Widget CustomButton(String text, BuildContext context) {
  return RaisedButton(
    color: Colors.transparent,
    onPressed: () => Navigator.push(
        context, MaterialPageRoute(builder: (_) => const Dashbaord())),
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontFamily: "Times new roman",
          fontWeight: FontWeight.w600),
    ),
  );
}
