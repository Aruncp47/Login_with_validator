import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled2/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login_with_Validation()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://img.freepik.com/free-vector/beautiful-mandala-style-background-with-text-space_1017-27397.jpg?w=1060&t=st=1666781185~exp=1666781785~hmac=6eef15254c81fa7654e9e843bd143fc3cce365053977cfac4a7fffcfd7466f0d"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("assets/images/mald.jpg"),
                height: 100,
                width: 100,
              ),
              Text(
                "my app",
                style: TextStyle(color: Colors.cyan),
              )
            ],
          ),
        ),
      ),
    );
  }
}
