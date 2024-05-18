import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:trip/widgets/card.dart';
import 'package:trip/class/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Product> products = [
    Product(title: "3 nights", desc: "Beach Paradise", price: "350"),
    Product(title: "5 nights", desc: "City Break", price: "400"),
    Product(title: "2 nights", desc: "Ski Adventure", price: "750"),
    Product(title: "3 nights", desc: "Beach Paradise", price: "350"),
    Product(title: "5 nights", desc: "City Break", price: "400"),
    Product(title: "2 nights", desc: "Ski Adventure", price: "750"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  'images/background.jpg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.white.withOpacity(0.4),
                  alignment: Alignment.centerLeft,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: const Text(
                    "Ninja Trips",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: products.map((q) {
                return card(
                  p: q,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
