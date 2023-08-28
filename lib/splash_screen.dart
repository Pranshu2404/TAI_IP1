import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recipe_finderr/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 234, 121, 22),
                    Colors.yellow
            ])),
        
        child: Center(
            
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/chef_3.jpg', scale: 3),
              const Text('RECIPEE APP',
              style: TextStyle(
                color: Color.fromARGB(255, 15, 97, 163),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
