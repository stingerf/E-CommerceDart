import 'package:flutter/material.dart';

class Itemwidget extends StatelessWidget {
  Itemwidget({super.key});

  List<String> myProductName = [
    'Earphone',
    'Futuristik',
    'Headset',
    'AK-47',
  ];

  List<String> myProductDescription = [
    'tanpa isi batre',
    'Perabotan rumah lengkap',
    'Masak nasi cuma 10 menit',
    'Magazine = 100+ peluru',
  ];

  List<double> myProductPrice = [
    20.00,
    160.00,
    45.00,
    70.00,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.98,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < myProductName.length; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                         color: Color.fromRGBO(255, 181, 51, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/itemappbar');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      'images/gambar/${i + 1}.jpeg', // Pastikan gambar tersedia sesuai dengan format
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    myProductName[i], // Nama produk mengikuti list
                    style: const TextStyle(
                      fontSize: 10,
                       color: Color.fromRGBO(255, 181, 51, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    myProductDescription[i], // Deskripsi produk mengikuti list
                    style: const TextStyle(
                      fontSize: 16,
                       color: Color.fromRGBO(154, 151, 145, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${myProductPrice[i]}', // Harga produk mengikuti list
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                           color: Color.fromRGBO(186, 186, 186, 1),
                        ),
                      ),
                      const Icon(
                        Icons.shopping_cart_checkout,
                        size: 20,
                         color: Color.fromRGBO(255, 181, 51, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
