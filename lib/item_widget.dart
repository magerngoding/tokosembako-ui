// ignore_for_file: prefer_const_constructors

import 'package:app_tokosembako/details_product.dart';
import 'package:app_tokosembako/models/data.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Product product;
  const ItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsProduct(product: product),
          ),
        );
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product.img,
              child: SizedBox(
                width: 150,
                child: Image.asset(product.img),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Rp ${product.price}',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              product.qty,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Beli",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.remove_circle_outline_outlined,
                      size: 20,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('0'),
                    ),
                    Icon(
                      Icons.remove_circle_outline_outlined,
                      size: 20,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
