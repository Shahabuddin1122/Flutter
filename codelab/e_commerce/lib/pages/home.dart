import 'package:e_commerce/components/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search......',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const Icon(
                    Icons.shopping_cart,
                    size: 25,
                  ),
                  const Icon(
                    Icons.chat,
                    size: 25,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Image.asset(
                'images/main.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: Container(
                height: 80,
                color: Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.apps,
                            size: 28,
                          ),
                          Text(
                            "Category",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.flight,
                            size: 28,
                          ),
                          Text(
                            "flight",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.add_circle,
                            size: 28,
                          ),
                          Text(
                            "Post",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.payments,
                            size: 28,
                          ),
                          Text(
                            "Bill",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.language,
                            size: 28,
                          ),
                          Text(
                            "Globe",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best selling products",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        SmallCard(),
                        SmallCard(),
                        SmallCard(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
