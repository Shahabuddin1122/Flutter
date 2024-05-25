import 'package:flutter/material.dart';
import 'package:world_time/pages/Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
    },
  ));
}