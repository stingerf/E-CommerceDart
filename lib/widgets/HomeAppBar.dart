import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
           const Icon(
            Icons.sort,
            size: 30,
             color: Color.fromRGBO(255, 181, 51, 1),
          ),
          const Padding(
        padding: EdgeInsets.only(left:30),
        child: Text(
          'Gloshop',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 181, 51, 1),
          ),
        ),
        ),
        const Spacer(),
        badges.Badge(
          badgeStyle: const badges.BadgeStyle(
            badgeColor:Colors.red,
            padding: EdgeInsets.all(7),
          ),
          badgeContent: const Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          child: InkWell(
           onTap: () {
            Navigator.pushNamed(context, "/chatpage");
           },
            child: const Icon(
            Icons.chat,
            size: 30,
             color: Color.fromRGBO(255, 181, 51, 1),
          ),
          )
          
          ) ,
        ],
      ),
    );
  }
}