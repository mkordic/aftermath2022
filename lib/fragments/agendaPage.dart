import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class agendaPage extends StatelessWidget {
  static const String routeName = '/agendPage';

  const agendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("PROGRAM"),
            backgroundColor: Color.fromRGBO(191, 85, 236, 1)
        ),
        drawer: navigationDrawer(),
        body: Row(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(191, 85, 236, 1),
                              Color.fromRGBO(213, 184, 255, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {},
                      child: const Text('26/10'),
                    ),
                  ],
                ),
              ),
              //Text('26/10', textAlign: TextAlign.center),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(191, 85, 236, 1),
                              Color.fromRGBO(213, 184, 255, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {},
                      child: const Text('27/10'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(191, 85, 236, 1),
                              Color.fromRGBO(213, 184, 255, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {},
                      child: const Text('28/10'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(191, 85, 236, 1),
                              Color.fromRGBO(213, 184, 255, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {},
                      child: const Text('29/10'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(191, 85, 236, 1),
                              Color.fromRGBO(213, 184, 255, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),

                      ),
                      onPressed: () {},
                      child: const Text('30/10'),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: FittedBox(
                child: FlutterLogo(),
              ),
            ),
          ],
        )
      //const Center(child: Text("AGENDA")));
    );
  }
}


