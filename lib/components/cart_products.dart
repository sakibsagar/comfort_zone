import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 2800,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress2.jpeg",
      "price": 1550,
      "size": "S",
      "color": "Black",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
          return Single_cart_products(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}
class Single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  
  Single_cart_products({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======= Leading Section ======
        leading: Image.asset(cart_prod_picture, width: 80.0,
          height: 80.0,),

        // ======= Title Section =======

        title: Text(cart_prod_name),

        // ======= Subtitle Section =======

        subtitle: Column(
          children: [
            //Row Inside The Column
            Row(
              children: [
                //this section is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_size, style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.red),),
                ),
                //this section is for the product color
                Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text("Color:"),),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_color, style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.red),),
                ),
              ],
            ),
          //  this section is for the product price
            Container(
              alignment: Alignment.topLeft,
              child: Text("\৳${cart_prod_price}",
                style: TextStyle(fontSize: 17.0,
                fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ),
          ],
        ),
        trailing: Column(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up),),
            Text("$cart_prod_qty"),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up),),
          ],
        ),
      ),
    );
  }
}

