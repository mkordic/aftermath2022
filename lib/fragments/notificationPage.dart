import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class notificationPage extends StatelessWidget {
  static const String routeName = '/notificationPage';

  const notificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notifications"),
        ),
        drawer: navigationDrawer(),
        body: const Center(child: Text("This is notification page")));
  }
}