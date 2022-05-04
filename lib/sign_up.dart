import 'package:flutter/material.dart';
import 'package:socialmedia_automation/dashboard.dart';
import 'package:socialmedia_automation/sigin_in.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  void doRegister() {
    formKey.currentState?.validate() ?? false;
    formKey.currentState?.save();
    print(_name.text);
    print(_email.text);
    print(_password.text);

    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const Dashbaord()));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
              child: Form(
                  child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: size.height / 12,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Times new roman",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: size.height / 15,
                  ),
                  Container(
                      height: size.height / 15,
                      width: size.width / 1.3,
                      alignment: Alignment.center,
                      child: TextFormField(
                          controller: _name,
                          style: const TextStyle(
                            fontFamily: "Times new roman",
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                          onSaved: (value) {
                            _name.text = value ?? "";
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field is required";
                            } else {
                              return null;
                            }
                          },
                          autofocus: false,
                          decoration: const InputDecoration(
                              // errorStyle: TextStyle(color: Colors.red),
                              prefixIcon: Icon(Icons.account_box),
                              hintText: "Enter Name",
                              prefixIconColor: Colors.white,
                              hintStyle: TextStyle(
                                fontFamily: "Times new roman",
                                fontSize: 13.0,
                                color: Colors.white,
                              )))),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Container(
                      height: size.height / 15,
                      width: size.width / 1.3,
                      alignment: Alignment.center,
                      child: TextFormField(
                          controller: _phone,
                          style: const TextStyle(
                            fontFamily: "Times new roman",
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field is required";
                            } else {
                              return null;
                            }
                          },
                          autofocus: false,
                          onSaved: (value) {
                            _phone.text = value ?? "";
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              hintText: "Enter Phone no.",
                              prefixIconColor: Colors.white,
                              hintStyle: TextStyle(
                                fontFamily: "Times new roman",
                                fontSize: 13.0,
                                color: Colors.white,
                              )))),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Container(
                      height: size.height / 15,
                      width: size.width / 1.3,
                      alignment: Alignment.center,
                      child: TextFormField(
                          controller: _email,
                          style: const TextStyle(
                            fontFamily: "Times new roman",
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field is required";
                            } else {
                              return null;
                            }
                          },
                          autofocus: false,
                          obscureText: false,
                          onSaved: (value) {
                            _email.text = value ?? "";
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: "Enter Email",
                              prefixIconColor: Colors.white,
                              hintStyle: TextStyle(
                                fontFamily: "Times new roman",
                                fontSize: 13.0,
                                color: Colors.white,
                              )))),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Container(
                      height: size.height / 15,
                      width: size.width / 1.3,
                      alignment: Alignment.center,
                      child: TextFormField(
                          controller: _password,
                          style: const TextStyle(
                            fontFamily: "Times new roman",
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field is required";
                            } else {
                              return null;
                            }
                          },
                          autofocus: false,
                          obscureText: true,
                          onSaved: (value) {
                            _password.text = value ?? "";
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: "Enter Password",
                              prefixIconColor: Colors.white,
                              hintStyle: TextStyle(
                                fontFamily: "Times new roman",
                                fontSize: 13.0,
                                color: Colors.white,
                              )))),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Container(
                      height: size.height / 15,
                      width: size.width / 1.3,
                      alignment: Alignment.center,
                      child: TextFormField(
                          controller: _confirmPassword,
                          style: const TextStyle(
                            fontFamily: "Times new roman",
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field is required";
                            } else {
                              return null;
                            }
                          },
                          autofocus: false,
                          onSaved: (value) {
                            _confirmPassword.text = value ?? "";
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: "Confirm Password",
                              prefixIconColor: Colors.white,
                              hintStyle: TextStyle(
                                fontFamily: "Times new roman",
                                fontSize: 13.0,
                                color: Colors.white,
                              )))),
                  SizedBox(height: size.height / 20),
                  RaisedButton(
                    color: Colors.transparent,
                    onPressed: () {
                      doRegister();
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: "Times new roman",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: size.height / 20),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignInPage())),
                    child: const Text(
                      "Sign in here",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Times new roman"),
                    ),
                  )
                ],
              )),
            )));
  }
}
