import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              'Product',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 181, 51, 1),
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
