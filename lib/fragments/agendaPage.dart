import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';
import '../routes/agendaPagesRoutes.dart';

class agendaPage extends StatelessWidget {
  static const String routeName = '/agendPage';

  const agendaPage({super.key});

  static const rowSpacer=TableRow(
      children: [
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 8,
        )
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("PROGRAM"),
            backgroundColor: Color.fromRGBO(191, 85, 236, 1)
        ),
        drawer: navigationDrawer(),
        body: Column(
            children: <Widget>[
              Row(
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
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, agendaPagesRoutes.first);
                            },
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
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, agendaPagesRoutes.second);
                            },
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
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, agendaPagesRoutes.third);
                            },
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
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, agendaPagesRoutes.fourth);
                            },
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
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, agendaPagesRoutes.fifth);
                            },
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
              ),
              SizedBox(height: 30),
              Container(
                child: Text('DAN 1', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.deepPurpleAccent)),
              ),
              SizedBox(height: 30),
              Container(
                  margin: EdgeInsets.all(10),
                // child: Padding(
                //   padding: const EdgeInsets.all(20),
                child: Table(
                  // defaultColumnWidth: FixedColumnWidth(175.0),
                  columnWidths: const {
                    0: FixedColumnWidth(120),
                    1: FlexColumnWidth()
                  },
                  // border: TableBorder.all(
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(10),
                  //     ),
                  //     color: Colors.black,
                  //     style: BorderStyle.solid,
                  //     width: 2
                  //     ),
                  children: [
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))],),
                       Column(children:[Text('Put', style: TextStyle(fontSize: 20.0))]),
                    ],
                        decoration: BoxDecoration(color: Color.fromRGBO(250, 200, 201, 1),
                            borderRadius: BorderRadius.all(Radius.circular(7))),

                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Raspoređivanje po sobama', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: BoxDecoration(color: Color.fromRGBO(217, 131, 166, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Ručak', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: BoxDecoration(color: Color.fromRGBO(219, 148, 190, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Slobodno vreme', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: //BoxDecoration(color: Color.fromRGBO(223, 176, 211, 1),
                          BoxDecoration(color: Color.fromRGBO(250, 200, 201, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Svečano otvaranje', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: BoxDecoration(color: Color.fromRGBO(217, 71, 115, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Pauza', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: //BoxDecoration(color: Color.fromRGBO(228, 208, 237, 1),
                      BoxDecoration(color: Color.fromRGBO(250, 200, 201, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Predavanje kompanije', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration:  BoxDecoration(color: Color.fromRGBO(217, 71, 115, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Slobodno vreme', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: //BoxDecoration(color: Color.fromRGBO(217, 131, 166, 1),
                          BoxDecoration(color: Color.fromRGBO(250, 200, 201, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Večera', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: BoxDecoration(color: Color.fromRGBO(219, 148, 190, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow( children: [
                      Column(children:[Text('10:00-11:00', style: TextStyle(fontSize: 20.0))]),
                      Column(children:[Text('Zabavni program', style: TextStyle(fontSize: 20.0))]),
                    ],
                      decoration: BoxDecoration(color: Color.fromRGBO(217, 131, 166, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    )
                  ],
                ),)
              ,
            ]
        )
      //const Center(child: Text("AGENDA")));
    );
  }
}


