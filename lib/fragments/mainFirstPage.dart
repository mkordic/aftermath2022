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
            backgroundColor: Colors.purple.shade300),
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
                _body()
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
      child: Expanded(
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold)))
            ],
          ),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          text:
                              "Potrudili smo se da vam olakšamo snalaženje tokom konferencije"
                              " tako da sve najbitnije informacije imate na jednom mestu: \n"
                              "\t • U odeljku AGENDA naći ćete satnicu programa\n"
                              "\t • U odeljku MAPA PALIĆA naći ćete lokacije \n"
                              "\t • U odeljku NOTIFIKACIJE dobijaćete najbitnija obaveštenja\n",
                          style: TextStyle(color: Colors.black, fontSize: 17)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
