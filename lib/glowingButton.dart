import 'package:flutter/material.dart';

class GlowingButton extends StatefulWidget {
  final Color color1;
  final Color color2;
  final String route;
  final String text;

  const GlowingButton(
      {this.color1 = Colors.cyan, this.color2 = Colors.greenAccent, this.route = '', this.text = ''})
     ;


  @override
  _GlowingButtonState createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton> {
  var glowing = true;
  var scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (val) {
        setState(() {
          glowing = false;
          scale = 1.0;
        });
        Navigator.pushReplacementNamed(
             context, widget.route);
      },
      onTapDown: (val) {
        setState(() {
          glowing = true;
          scale = 1.1;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.identity()..scale(scale),
        duration: Duration(milliseconds: 200),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

            color: Colors.purple.shade50,
            border: Border.all(color:Colors.purple.shade100,width: 3),
            boxShadow: glowing
                ? [
              BoxShadow(
                color: Colors.purple.shade200.withOpacity(0.5),
                spreadRadius: 0.3,
                blurRadius: 32,
                offset: const Offset(-4, 0),
              ),
              BoxShadow(
                color: //widget.color2.withOpacity(0.6),
                Colors.purple.shade500.withOpacity(0.3),
                spreadRadius: 0.3,
                blurRadius: 32,
                offset: const Offset(4, 0),
              ),
              BoxShadow(
                color: Colors.purple.shade500.withOpacity(0.1),
                spreadRadius: 0.3,
                blurRadius: 10,
                offset: const Offset(-4, 0),
              ),
              BoxShadow(
                color: Colors.purple.shade500.withOpacity(0.1),
                spreadRadius: 0.3,
                blurRadius: 10,
                offset: const Offset(4, 0),
              )
            ]
                : []),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
             widget.text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}