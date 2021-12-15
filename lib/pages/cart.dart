import 'package:flutter/material.dart';
//my imports
import 'package:comfort_zone/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\৳230"),
            ),),
            Expanded(
                child: MaterialButton(onPressed: (){},
                child: Text("Check Out", style: TextStyle(color: Colors.white),),
                color: Colors.red,),
            ),
          ],
        ),
      ),
    );
  }
}
