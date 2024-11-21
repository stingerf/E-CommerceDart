import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 140,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 181, 51, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '\$258',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(255, 181, 51, 1),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 181, 51, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Check Out',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}