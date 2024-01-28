// ignore_for_file: prefer_const_constructors

import 'package:app_tokosembako/models/data.dart';
import 'package:app_tokosembako/order.dart';
import 'package:flutter/material.dart';

class DetailsProduct extends StatefulWidget {
  final Product product;
  DetailsProduct({required this.product});

  @override
  State<DetailsProduct> createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  int count = 1;

  void addCount() {
    count += 1;
    setState(() {});
  }

  void removeCount() {
    count -= 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail",
          style: TextStyle(color: Colors.black),
        ),

        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.product.name,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
          Center(
            child: Hero(
              tag: widget.product.img,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // Mengambil gambar dari assets
                    image: AssetImage(widget.product.img),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'Rp. ${widget.product.price}',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  ' /${widget.product.qty}',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              child: Text(
                widget.product.desc,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          removeCount();
                        },
                        icon: Icon(
                          Icons.remove_circle_outline_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        count.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          addCount();
                        },
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Order(),
                      ),
                    );
                  },
                  child: Center(
                    child: Container(
                      width: 190,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          "Pesan",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
