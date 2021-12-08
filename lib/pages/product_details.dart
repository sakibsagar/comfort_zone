import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {

  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Comfort Zone'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text("\৳${widget.product_detail_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                          child: Text("\৳${widget.product_detail_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //     ====== the first button =======
          Row(
            children: [
              //   ====== the size button =======
              Expanded(
                  child: MaterialButton(onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                    elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Size")
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                  ),
                  ),

              //   ====== the color button ======
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Color")
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),

              //   ====== the qty button =======
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Qty")
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
