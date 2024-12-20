import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
             color: Color.fromRGBO(255, 181, 51, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cart',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 181, 51, 1),
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            size: 30,
            color: Color.fromRGBO(255, 181, 51, 1),
          )
        ],
      ),
    );
  }
}