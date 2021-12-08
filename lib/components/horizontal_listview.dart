import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_loacation: 'images/cats/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_loacation: 'images/cats/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_loacation: 'images/cats/jeans.png',
            image_caption: 'Pants',
          ),
          Category(
            image_loacation: 'images/cats/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_loacation: 'images/cats/informal.png',
            image_caption: 'Informal',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_loacation;
  final String image_caption;
  Category({required this.image_loacation, required this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_loacation,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }
}
