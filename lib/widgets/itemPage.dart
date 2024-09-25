import 'package:flutter/material.dart';
import 'package:skl_e_commerse/widgets/itemappbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: ListView(
        children: [
           ItemAppBar(),
           
        ],
      ),
    );
  }
}