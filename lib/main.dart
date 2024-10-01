import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Produktliste',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ProduktListe(),
    );
  }
}

class ProduktListe extends StatelessWidget {
  const ProduktListe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produkte'),
      ),
      body: const Center(
        child: Text(
          'Schaue ein schönes Produkt an, indem du auf den FAB drückst',
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProduktDetail()),
          );
        },
        child: const Icon(Icons.shopping_bag_outlined),
      ),
    );
  }
}

class ProduktDetail extends StatelessWidget {
  const ProduktDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details zu Hemd'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hemd',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Ein Hemd das wirklich gut passt'),
            SizedBox(height: 10),
            Text(
              'Preis: 49.99 €',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
