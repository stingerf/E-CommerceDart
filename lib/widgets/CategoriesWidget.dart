import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = ['Elekrtonik', 'Mainan', 'Passion', 'Makanan'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < categories.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // Ganti Image.asset dengan Image.network untuk debugging jika ada masalah dengan gambar lokal
                  Image.asset(
                    'images/profile/${i + 1}.jpeg', // Pastikan gambar ini ada di folder dan terdaftar di pubspec.yaml
                    width: 40,
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      categories[i],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                         color: Color.fromRGBO(255, 181, 51, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
