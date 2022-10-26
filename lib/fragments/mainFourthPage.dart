import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class mainFourthPage extends StatelessWidget {
  static const String routeName = '/mainFourthPage';

  const mainFourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            title: const Text("Bronzani sponzori"),
            backgroundColor: const Color(0xff73529f)),
        drawer: navigationDrawer(),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                sponsorCard(
                    "assets/images/ubisoft.png", screenWidth, screenHeight),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                ),
                sponsorCard(
                    "assets/images/lukowa_logo.png", screenWidth, screenHeight),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                ),
                sponsorCard("assets/images/infostud_logo.png", screenWidth,
                    screenHeight),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                ),
                sponsorCard(
                    "assets/images/ing_logo.png", screenWidth, screenHeight)
              ],
            ))));
  }

  Widget sponsorCard(
      String imagePath, double screenWidth, double screenHeight) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: Colors.white38.withOpacity(0.5),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // add this
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Image(
                    image: AssetImage(imagePath),
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.2,
                    fit: BoxFit.contain),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
