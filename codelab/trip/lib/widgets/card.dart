import 'package:flutter/material.dart';
import 'package:trip/class/data.dart';
import 'package:trip/pages/product.dart';

class card extends StatelessWidget {
  final Product p;
  const card({super.key, required this.p});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndiProduct(p: p),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/background.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                ),
              ),
            ),
            Container(
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    p.title,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    p.desc,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "\$${p.price}",
              style: const TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
