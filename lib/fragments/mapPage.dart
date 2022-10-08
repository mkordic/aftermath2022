import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class mapPage extends StatelessWidget {
  static const String routeName = '/mapPage';

  const mapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mapa Palića"),
        ),
        drawer: navigationDrawer(),
        body: const Center(child: Text("This is map page")));
  }
}