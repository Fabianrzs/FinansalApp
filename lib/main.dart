import 'package:day14/pages/home/homePage.dart';
import 'package:day14/pages/userSession/loginPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(


  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: (1 != 1) ? HomePage() : LoginPage(),
  )
);


