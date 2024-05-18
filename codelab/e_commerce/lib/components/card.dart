import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        color: Colors.grey[200],
        child: Column(
          children: [
            Image.asset(
              "images/shirt.jpg",
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "shirt",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),
                  Text(
                    "Essential men's short slave T-Shirt",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.grade,
                            color: Colors.amber,
                          ),
                          Text("4.5/5"),
                        ],
                      ),
                      Text(
                        "£10",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
