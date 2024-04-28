import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<dynamic> product = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products page with state"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) {
          final p = product[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text('${p['id']}'),
            ),
            title: Text('${p['title']}'),
            subtitle: Text('${p['body']}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  void fetchUsers() async {
    print('fetch user function called');
    const url = "https://jsonplaceholder.typicode.com/posts";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    setState(() {
      product = jsonDecode(response.body);
    });
  }
}
