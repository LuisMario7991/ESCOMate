import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './info/provider.dart';
import './pages/inicio.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => LoginProvider(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}
