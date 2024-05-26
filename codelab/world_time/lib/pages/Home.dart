import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_time/services/world_time.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Object? args = ModalRoute.of(context)?.settings.arguments;
    Map<String, dynamic> data = {};
    if (args is Map<String, dynamic>) {
      data = args;
      print(data);
    } else {
      // Handle the case where the arguments are not a map or are null
      // This could be a logging statement or default assignment
      print('Error: Expected Map<String, dynamic> but got ${args.runtimeType}');
    }

    String image =
        data != null && data["isDaytime"] != null && data["isDaytime"]
            ? 'assets/day.jpg'
            : "assets/night.jpg";

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pin_drop,
                  size: 35,
                  color: Colors.white,
                ),
                Text(
                  "Edit location",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              data != null && data["location"] != null
                  ? data["location"]
                  : "Not Specified",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              data != null && data["time"] != null
                  ? data["time"]
                  : "Not Specified",
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w900,
                letterSpacing: 3,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
