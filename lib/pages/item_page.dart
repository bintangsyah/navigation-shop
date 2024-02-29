import 'package:flutter/material.dart';
import 'package:navi/models/item.dart';



class ItemPage extends StatelessWidget {
  final Item item;
  ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ab = item.price;
    var abc = item.quantity;
    // final itemArgs = (ModalRoute.of(context)?.settings.arguments) as Map;
    // print(itemArgs["name"]);
    // print(item.name);

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              elevation: 4,
              child: Image.asset(
                item.imagePath,
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            Text(item.name, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("Rp. " + ab.toString(), style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
            Text("Tersedia : "+ abc.toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Text("Description : ", style: TextStyle(fontSize: 15),),
            Text(item.description, style: TextStyle(fontSize: 15),),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.red),),
                    onPressed: () {
                      // Navigate back to the HomePage
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.shopping_cart_checkout),
                    label: Text('Add to cart'),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.green)),
                    onPressed: () {
                      // Navigate back to the HomePage
                      Navigator.pop(context);
                    },
                    child: Text('Back to Shopping List'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.purple),),
                    onPressed: () {
                      // Navigate back to the HomePage
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.monetization_on),
                    label: Text('PURCHASE'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
