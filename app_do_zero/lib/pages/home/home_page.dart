// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.menu), title: const Text('app')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            i = i + 1;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          child: Text(
            i.toString(),
            style: const TextStyle(color: Colors.blue, fontSize: 72),
          ),
        ),
      ),
    );
  }
}
