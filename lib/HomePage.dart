// ignore_for_file: prefer_const_constructors

import 'package:app_tokosembako/models/data.dart';
import 'package:flutter/material.dart';
import 'package:app_tokosembako/item_widget.dart';

class AppTokoSembako extends StatefulWidget {
  const AppTokoSembako({super.key});

  @override
  State<AppTokoSembako> createState() => _AppTokoSembakoState();
}

class _AppTokoSembakoState extends State<AppTokoSembako> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Toko Buah & Sayur",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    // untuk notifikasi
                    top: 0,
                    right: 3,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return ItemWidget(product: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
