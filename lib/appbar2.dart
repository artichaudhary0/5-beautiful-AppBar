import 'dart:html';

import 'package:flutter/material.dart';

class AppBar2 extends StatelessWidget {
  const AppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Transparent AppBar"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        backgroundColor: Colors.white.withOpacity(.25),
      ),
      body: Image.network(
        "https://tse4.mm.bing.net/th?id=OIP.Vl54yTVX8fXMRX-CTZcUvAHaEK&pid=Api&P=0&w=290&h=163",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
