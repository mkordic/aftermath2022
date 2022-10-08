import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class agendaPage extends StatelessWidget {
  static const String routeName = '/agendPage';

  const agendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My agenda"),
        ),
        drawer: navigationDrawer(),
        body: const Center(child: Text("This is agenda page")));
  }
}