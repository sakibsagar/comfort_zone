import 'dart:ui';
import 'package:comfort_zone/main.dart';
import 'package:flutter/material.dart';
//import 'package:comfort_zone_tut.dart';
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
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
            child: Text('Comfort Zone')),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
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
                  child: MaterialButton(
                    onPressed: (){
                    showDialog(context: context, 
                        builder: (context){
                      return AlertDialog(
                        title: Text("Size"),
                        content: Text("Choose the size"),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: Text("close"),)
                        ],
                      );
                    });
                  },
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
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose the color"),
                            actions: [
                              MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: Text("close"),)
                            ],
                          );
                        });
                  },
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
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the qty"),
                            actions: [
                              MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: Text("close"),)
                            ],
                          );
                        });
                  },
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

          //     ====== the Second button =======
          Row(
            children: [
              //   ====== the Buy button =======
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now")
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart, color: Colors.red,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.red,),),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text("A blazer is a type of jacket resembling suit jacket, but cut more casually. A blazer is generally distinguished from a sport coat as a more formal garment and tailored from solid colored fabrics. A blazer's cloth is usually durable, as it is intended as outdoor wear. This black lace slim fit blazer is specially manufactured for stylish corporate women, which includes folded collar and solid inside lining."),
          ),
          Divider(),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.00),
              child: Text("Product name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),)
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.00),
                child: Text("Product brand", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),)
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.00),
                child: Text("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("New"),)
            ],
          ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Similar Products"),
        ),
        //  Similar Products Section
          Container(
            height: 340.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 3500,
      "price": 2800,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 1500,
      "price": 1250,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 1800,
      "price": 1550,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Similar_ingle_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}

class Similar_ingle_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_ingle_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
                //here we are passing the values of the product to the product detail page
                  builder: (context)=> ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                footer: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),
                        Text("\৳${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    )
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}



