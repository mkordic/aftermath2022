import 'package:flutter/material.dart';
import '../../navigationDrawer/navigationDrawer.dart';
import '../../routes/agendaPagesRoutes.dart';
import '../../glowingButton.dart';

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
            title: const Text("Dan 5"), backgroundColor: const Color(0xff73529f)),
        drawer: navigationDrawer(),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
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
                      child: GlowingButton(
                    route: agendaPagesRoutes.first,
                    text: "26/10",
                    color1: Colors.purple,
                    color2: Colors.indigo.shade100,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GlowingButton(
                    route: agendaPagesRoutes.second,
                    text: "27/10",
                    color1: Colors.purple,
                    color2: Colors.indigo.shade100,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GlowingButton(
                    route: agendaPagesRoutes.third,
                    text: "28/10",
                    color1: Colors.purple,
                    color2: Colors.indigo.shade100,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GlowingButton(
                    route: agendaPagesRoutes.fourth,
                    text: "29/10",
                    color1: Colors.purple,
                    color2: Colors.indigo.shade100,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GlowingButton(
                    route: agendaPagesRoutes.fifth,
                    text: "30/10",
                    color1: Colors.purple,
                    color2: Colors.indigo.shade100,
                  )),
                ],
              ),

              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.all(10),
                child: SingleChildScrollView(
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
                              Text('08:00-09:00',
                                  style: TextStyle(fontSize: 18.0))
                            ],
                          ),
                          Column(children: const [
                            Text('Doručak i izlazak iz soba', style: TextStyle(fontSize: 17.0))
                          ]),
                        ],
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(185, 104, 199, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      rowSpacer,
                      // TableRow(
                      //   children: [
                      //     Column(children: const [
                      //       Text('10:00-11:00',
                      //           style: TextStyle(fontSize: 18.0))
                      //     ]),
                      //     Column(children: const [
                      //       Text('Izlazak iz soba',
                      //           style: TextStyle(fontSize: 17.0))
                      //     ]),
                      //   ],
                      //   decoration: const BoxDecoration(
                      //       color: Color.fromRGBO(231, 187, 236, 1),
                      //       borderRadius: BorderRadius.all(Radius.circular(7))),
                      // ),
                      // rowSpacer,
                      TableRow(
                        children: [
                          Column(children: const [
                            Text('09:15-17:00',
                                style: TextStyle(fontSize: 18.0))
                          ]),
                          Column(children: const [
                            Text('Slobodno vreme: Palić/Segedin',
                                style: TextStyle(fontSize: 17.0))
                          ]),
                        ],
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(242, 228, 244, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      rowSpacer,
                      TableRow(
                        children: [
                          Column(children: const [
                            Text('17:00-19:30',
                                style: TextStyle(fontSize: 18.0))
                          ]),
                          Column(children: const [
                            Text('Dolazak kući',
                                style: TextStyle(fontSize: 17.0))
                          ]),
                        ],
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(204, 159, 216, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      )
                    ],
                  ),
                ),
              ),
            ]))
        //const Center(child: Text("AGENDA")));
        );
  }
}
