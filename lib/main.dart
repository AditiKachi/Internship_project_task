import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socialmedia_automation/sigin_in.dart';

void main() {
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
