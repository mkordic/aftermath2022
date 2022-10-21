import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';
import 'package:google_fonts/google_fonts.dart';

class mainFirstPage extends StatelessWidget {
  static const String routeName = '/mainFirstPage';

  const mainFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("AfterMath"),
            backgroundColor: Colors.purple),
        drawer: navigationDrawer(),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                ),
                _header(),
                Container(margin: const EdgeInsets.symmetric(vertical: 30)),
                _body(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.arrow_right_alt_rounded, size: 60, color: Colors.purple[50]),
                ),
              ],
            )));
  }

  Widget _header() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
          color: Colors.purple.shade50,
          border: Border.all(color: Colors.purple.shade100, width: 10),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.purple, offset: Offset(5, 5))
          ]),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: 'Dobrodošli na AfterMath2022',
                    style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)))
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.purple.shade50,
          border: Border.all(color: Colors.purple.shade100, width: 10),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.purple, offset: Offset(5, 5))
          ]),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text:
                    "Potrudili smo se da vam olakšamo snalaženje tokom konferencije,"
                    " tako da sve najbitnije informacije imate na jednom mestu: \n",
                style: TextStyle(color: Colors.purple[900], fontSize: 19),
                children: const <TextSpan>[
                  TextSpan(text: "\t • U odeljku "),
                  TextSpan(
                      text: "AGENDA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: " naći ćete satnicu programa\n"
                          "\t • U odeljku "),
                  TextSpan(
                      text: "MAPA PALIĆA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: " naći ćete zanimljive lokacije "
                          " koje možete posetiti u slobodno vreme \n"
                          "\t • U odeljku "),
                  TextSpan(
                      text: "NOTIFIKACIJE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: " dobijaćete najbitnija obaveštenja\n"
                          "\t • Na narednim stranama možete videti i sponzore konferencije"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
