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
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 1500,
      "price": 1250,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Singlr_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}
class Singlr_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Singlr_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
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
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prod_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\৳$prod_price",
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\৳$prod_old_price",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
                child: Image.asset(prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}

