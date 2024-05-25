import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip/class/data.dart';
import 'package:trip/widgets/customIcon.dart';

class IndiProduct extends StatefulWidget {
  final Product data;
  const IndiProduct({super.key, required this.data});

  @override
  _IndiProductState createState() => _IndiProductState();
}

class _IndiProductState extends State<IndiProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.desc),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'locator-img-${widget.data.desc}',
            child: Image.asset(
              'images/background.jpg',
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.data.desc,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.data.title,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    const CustomIcon(
                      icon: Icons.favorite,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Column(
                    children: [
                      const Text(
                        "By improving awareness and understanding of menstrual health, individuals can better identify when something is wrong and seek medical advice promptly, leading to early detection and treatment of potential health issues.",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text("Book now"),
                        ),
                      ),
                    ],
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
