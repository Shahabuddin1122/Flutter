import 'package:flutter/material.dart';
import 'class/queta.dart';
import 'widgets/card_component.dart';

void main() {
  runApp(const MaterialApp(
    home: WhatsApp(),
  ));
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  List<Queta> queta2 = [
    Queta(
        name: "Shahabuddin",
        desc: "just like you would any other constructor:"),
    Queta(
        name: "Hridoy",
        desc:
            "Google uses cookies to deliver its services, to personalize ads"),
    Queta(name: "Akhon", desc: "You can adjust your privacy controls"),
    Queta(name: "Akhon", desc: "You can adjust your privacy controls"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "WhatsApp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.mail),
                  SizedBox(width: 25),
                  Icon(Icons.search),
                  SizedBox(width: 13),
                  Icon(Icons.more_vert)
                ],
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: queta2.map((q) {
                return CardComponent(
                    queta: q,
                    delete: () {
                      setState(() {
                        queta2.remove(q);
                      });
                    });
              }).toList(),
            ),
            const Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Icon(Icons.chat),
                          Text("Chats"),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Icon(Icons.update),
                          Text("Updates"),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Icon(Icons.people),
                          Text("Communities"),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Icon(Icons.call),
                          Text("Calls"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
