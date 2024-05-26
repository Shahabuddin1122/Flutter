import 'package:flutter/material.dart';
import 'package:world_time/pages/Home.dart';
import 'package:world_time/pages/Loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/': (context) => const Home(),
      '/loading': (context) => const Loading(),
    },
  ));
}
