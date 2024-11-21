import 'package:flutter/material.dart';
import 'package:skl_e_commerse/pages/ItemPages.dart';
import 'package:skl_e_commerse/pages/cartpage.dart';
import 'package:skl_e_commerse/pages/chatpage.dart';
import 'package:skl_e_commerse/pages/homepage.dart';
import 'package:skl_e_commerse/pages/login.dart';
import 'package:skl_e_commerse/pages/profilepage.dart';
import 'package:skl_e_commerse/pages/register.dart';
import 'package:skl_e_commerse/pages/subchatpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => const Homepage(),
        "/itemappbar": (context) => ItemPage(),
        "/cartpage": (context) => const CartPage(),
        "/login": (context) =>  const LoginPage(),
        "/register": (context) => const RegisterPage(),
        "/chatpage": (context) => ChatPage(),
        "/subchatpage": (context) => SubChat(name: '',),
        "/profilepage": (context) => ProfilePage(),
      },
    );
  }
}
