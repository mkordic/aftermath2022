import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class mainFirstPage extends StatelessWidget {
  static const String routeName = '/mapPage';

  const mainFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: "Masha",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 28,
              ),
            ),
            TextSpan(
                text: "fromALEKSANDROVAC",
                style: TextStyle(
                  color: Colors.purple[300],
                  fontSize: 15,
                )
              )
          ]
        )
    );
  }
}