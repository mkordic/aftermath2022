import 'package:flutter/material.dart';
import '../../navigationDrawer/navigationDrawer.dart';
import '../../routes/agendaPagesRoutes.dart';

class day5 extends StatelessWidget {
  static const String routeName = '/day5';

  const day5({super.key});

  static const rowSpacer = TableRow(children: [
    SizedBox(
      height: 12,
    ),
    SizedBox(
      height: 12,
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Dan 5"),
            backgroundColor: Colors.purple[300]),
        drawer: navigationDrawer(),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/grid.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purple.shade300,
                                  Colors.purple.shade100,
                                  Colors.purple.shade50
                                ],
                              ),
                            ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, agendaPagesRoutes.first);
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
                              decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purple.shade300,
                                  Colors.purple.shade100,
                                  Colors.purple.shade50
                                ],
                              ),
                            ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, agendaPagesRoutes.second);
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
                              decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purple.shade300,
                                  Colors.purple.shade100,
                                  Colors.purple.shade50
                                ],
                              ),
                            ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, agendaPagesRoutes.third);
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
                              decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purple.shade300,
                                  Colors.purple.shade100,
                                  Colors.purple.shade50
                                ],
                              ),
                            ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, agendaPagesRoutes.fourth);
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
                              decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purple.shade300,
                                  Colors.purple.shade100,
                                  Colors.purple.shade50
                                ],
                              ),
                            ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, agendaPagesRoutes.fifth);
                            },
                            child: const Text('30/10'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: FittedBox(
                      child: FlutterLogo(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // const Text('DAN 5',
              //     style: TextStyle(
              //         fontSize: 40,
              //         fontWeight: FontWeight.w600,
              //         color: Colors.deepPurpleAccent)),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.all(10),
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(120),
                    1: FlexColumnWidth()
                  },
                  children: [
                    TableRow(
                      children: [
                        Column(
                          children: const [
                            Text('08:00-10:00',
                                style: TextStyle(fontSize: 20.0))
                          ],
                        ),
                        Column(children: const [
                          Text('Doručak', style: TextStyle(fontSize: 20.0))
                        ]),
                      ],
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(250, 200, 201, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow(
                      children: [
                        Column(children: const [
                          Text('10:00-11:00', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Izlazak iz soba',
                              style: TextStyle(fontSize: 20.0))
                        ]),
                      ],
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 131, 166, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow(
                      children: [
                        Column(children: const [
                          Text('11:00-16:00', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Slobodno vreme: Palić/Segedin',
                              style: TextStyle(fontSize: 17.0))
                        ]),
                      ],
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 71, 115, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    rowSpacer,
                    TableRow(
                      children: [
                        Column(children: const [
                          Text('16:00-18:30', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Dolazak kući', style: TextStyle(fontSize: 20.0))
                        ]),
                      ],
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(219, 148, 190, 1),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    )
                  ],
                ),
              ),
            ]))
        //const Center(child: Text("AGENDA")));
        );
  }
}
