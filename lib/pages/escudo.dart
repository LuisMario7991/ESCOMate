import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESCOMate'),
        backgroundColor: Colors.blue.shade700,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Bienvenido a la Página 3'),
      ),
    );
  }
}
