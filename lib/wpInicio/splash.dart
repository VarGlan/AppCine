import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/wpInicio/inicio.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashState createState() => _SplashState();
  }
  
class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                paginaInicio()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Image.asset('assets/img/micine.png',),
        )
    );
  }
}