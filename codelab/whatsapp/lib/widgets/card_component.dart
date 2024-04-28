import 'package:flutter/material.dart';
import 'package:whatsapp/class/queta.dart';

class CardComponent extends StatelessWidget {
  final Queta queta;
  final Function() delete;
  const CardComponent({required this.queta, required this.delete, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: Colors.lime[200],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              ' ${queta.desc}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              ' ${queta.name}',
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lime[400],
              ),
              onPressed: delete,
              icon: const Icon(Icons.delete), // Providing an Icon widget
              label: const Text(
                  "delete quote"), // Providing a Text widget for the label
            )
          ],
        ),
      ),
    );
  }
}
