import 'package:flutter/material.dart';
import 'package:trip/class/data.dart';

class IndiProduct extends StatefulWidget {
  final Product p;
  const IndiProduct({super.key, required this.p});
  @override
  State<IndiProduct> createState() => _IndiProductState();
}

class _IndiProductState extends State<IndiProduct> {
  bool _isFavorite = false;
  void _togleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Break"),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/background.jpg',
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City Break",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "5 night stay for only \$400",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        size: 35,
                        color: _isFavorite ? Colors.orange : Colors.grey,
                      ),
                      onPressed: _togleFavorite,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Text(
                    "By improving awareness and understanding of menstrual health, individuals can better identify when something is wrong and seek medical advice promptly, leading to early detection and treatment of potential health issues.",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
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
