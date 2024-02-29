import 'package:flutter/material.dart';
import 'package:navi/models/item.dart';
import 'package:navi/pages/item_page.dart';



class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 13000,
        quantity: 100,
        description: 'Gula Terbuat dari gula tebu asli pilihan Diproses secara higienis yang telah memenuhi standar mutu Menghasilkan gula yang manis, alami, murni dan bersih \nIsi : 1kg',
        imagePath: 'assets/gula.jpg'),
    Item(
        name: 'Salt',
        price: 5000,
        quantity: 200,
        description: 'Garam  adalah kumpulan senyawa kimia dengan komponen utamanya Natrium Klorida (NaCL) sama saja dengan garam dapur.i. \n Isi: 250g',
        imagePath: 'assets/salt.jpg'),
    Item(
        name: 'MSG',
        price: 3000,
        quantity: 200,
        description: 'MSG Atau biaa disebut monosodium glutamate adalah garam natrium yang berasal dari asam amino asam glutamat.\n Isi : 100g',
        imagePath: 'assets/msg.jpg'),
    Item(
        name: 'Masako Ayam',
        price: 1000,
        quantity: 200,
        description: 'Bumbu Kaldu Penyedap dibuat dengan perpaduan sempurna antara daging segar berkualitas, bumbu dan rempah pilihan. \n Isi : 11g ',
        imagePath: 'assets/masakoayam.jpg'),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Daftar Belanja",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                var itemss = {
                  "name": item.name,
                  "price": item.price,
                  "quantity": item.quantity,
                  "description": item.description,
                  "imagePath": item.imagePath
                };
                return InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, '/item', arguments: item);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemPage(
                                item: item,
                              )),
                    );
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(children: [
                        Image.asset(
                          item.imagePath,
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              item.price.toString(),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ))
                      ]),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
