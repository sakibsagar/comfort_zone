import 'package:comfort_zone/pages/product_details.dart';
import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      "name": "Shoe",
      "picture": "images/products/hills1.jpeg",
      "old_price": 1250,
      "price": 950,
    },
    {
      "name": "Skt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 750,
      "price": 550,
    },
    {
      "name": "Skt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 650,
      "price": 450,
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
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
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

