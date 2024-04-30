import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_test/components/card.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BigCard(
                    img: 'images/burger.jpg',
                    cardTitle: "Hot Burger",
                    subText: "Teste our Hot Burger",
                    price: "\$10",
                  ),
                  BigCard(
                    img: 'images/burger-king.jpg',
                    cardTitle: "Burger king",
                    subText: "Test best burger",
                    price: "\$20",
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
