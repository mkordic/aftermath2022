import 'package:flutter/material.dart';
import '../../glowingButton.dart';
import '../../navigationDrawer/navigationDrawer.dart';
import '../../routes/agendaPagesRoutes.dart';

class day1 extends StatelessWidget {
  static const String routeName = '/day1';

  const day1({super.key});

  static const rowSpacer = TableRow(children: [
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
          title: const Text("Dan 1"),
          backgroundColor: Colors.purple.shade300),
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
                // Expanded(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(4),
                //     child: Stack(
                //       children: <Widget>[
                //         Positioned.fill(
                //           child: Container(
                //             decoration: BoxDecoration(
                //               gradient: LinearGradient(
                //                 colors: [
                //                   Colors.purple.shade300,
                //                   Colors.purple.shade100,
                //                   Colors.purple.shade50
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(
                //           style: TextButton.styleFrom(
                //             foregroundColor: Colors.black,
                //             padding: const EdgeInsets.all(16.0),
                //             textStyle: const TextStyle(
                //                 fontSize: 12, fontWeight: FontWeight.w900),
                //           ),
                //           onPressed: () {
                //             Navigator.pushReplacementNamed(
                //                 context, agendaPagesRoutes.first);
                //           },
                //           child: const Text('26/10'),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Expanded(
                    child:GlowingButton(
                      route: agendaPagesRoutes.first,
                      text: "26/10",
                      color1: Colors.purple,
                      color2: Colors.indigo.shade100,
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: GlowingButton(
                      route: agendaPagesRoutes.second,
                      text: "27/10",
                      color1: Colors.purple,
                      color2: Colors.indigo.shade100,
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: GlowingButton(
                      route: agendaPagesRoutes.third,
                      text: "28/10",
                      color1: Colors.purple,
                      color2: Colors.indigo.shade100,
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: GlowingButton(
                      route: agendaPagesRoutes.fourth,
                      text: "29/10",
                      color1: Colors.purple,
                      color2: Colors.indigo.shade100,
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: GlowingButton(
                      route: agendaPagesRoutes.fifth,
                      text: "30/10",
                      color1: Colors.purple,
                      color2: Colors.indigo.shade100,
                    )
                ),
                // Expanded(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(4),
                //     child: Stack(
                //       children: <Widget>[
                //         Positioned.fill(
                //           child: Container(
                //             decoration: BoxDecoration(
                //               gradient: LinearGradient(
                //                 colors: [
                //                   Colors.purple.shade300,
                //                   Colors.purple.shade100,
                //                   Colors.purple.shade50
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(
                //           style: TextButton.styleFrom(
                //             foregroundColor: Colors.black,
                //             padding: const EdgeInsets.all(16.0),
                //             textStyle: const TextStyle(
                //                 fontSize: 12, fontWeight: FontWeight.w900),
                //           ),
                //           onPressed: () {
                //             Navigator.pushReplacementNamed(
                //                 context, agendaPagesRoutes.second);
                //           },
                //           child: const Text('27/10'),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(4),
                //     child: Stack(
                //       children: <Widget>[
                //         Positioned.fill(
                //           child: Container(
                //             decoration: BoxDecoration(
                //               gradient: LinearGradient(
                //                 colors: [
                //                   Colors.purple.shade300,
                //                   Colors.purple.shade100,
                //                   Colors.purple.shade50
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(
                //           style: TextButton.styleFrom(
                //             foregroundColor: Colors.black,
                //             padding: const EdgeInsets.all(16.0),
                //             textStyle: const TextStyle(
                //                 fontSize: 12, fontWeight: FontWeight.w900),
                //           ),
                //           onPressed: () {
                //             Navigator.pushReplacementNamed(
                //                 context, agendaPagesRoutes.third);
                //           },
                //           child: const Text('28/10'),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(4),
                //     child: Stack(
                //       children: <Widget>[
                //         Positioned.fill(
                //           child: Container(
                //             decoration: BoxDecoration(
                //               gradient: LinearGradient(
                //                 colors: [
                //                   Colors.purple.shade300,
                //                   Colors.purple.shade100,
                //                   Colors.purple.shade50
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(
                //           style: TextButton.styleFrom(
                //             foregroundColor: Colors.black,
                //             padding: const EdgeInsets.all(16.0),
                //             textStyle: const TextStyle(
                //                 fontSize: 12, fontWeight: FontWeight.w900),
                //           ),
                //           onPressed: () {
                //             Navigator.pushReplacementNamed(
                //                 context, agendaPagesRoutes.fourth);
                //           },
                //           child: const Text('29/10'),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(4),
                //     child: Stack(
                //       children: <Widget>[
                //         Positioned.fill(
                //           child: Container(
                //             decoration: BoxDecoration(
                //               gradient: LinearGradient(
                //                 colors: [
                //                   Colors.purple.shade300,
                //                   Colors.purple.shade100,
                //                   Colors.purple.shade50
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(
                //           style: TextButton.styleFrom(
                //             foregroundColor: Colors.black,
                //             padding: const EdgeInsets.all(16.0),
                //             textStyle: const TextStyle(
                //                 fontSize: 12, fontWeight: FontWeight.w900),
                //           ),
                //           onPressed: () {
                //             Navigator.pushReplacementNamed(
                //                 context, agendaPagesRoutes.fifth);
                //           },
                //           child: const Text('30/10'),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const Expanded(
                //   child: FittedBox(
                //     child: FlutterLogo(),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 30),
            // const Text('DAN 1',
            //     style: TextStyle(
            //         fontSize: 40,
            //         fontWeight: FontWeight.w600,
            //         color: Colors.deepPurpleAccent)),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.all(10),
              child: Table(
                columnWidths: const {
                  0: FixedColumnWidth(130),
                  1: FlexColumnWidth()
                },
                children: [
                  TableRow(
                    children: [
                      Column(
                        children: const [
                          Text('08:30-11:30', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(children: const [
                        Text('Put', style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(138, 78, 149, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('11:30-13:00', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Raspoređivanje po sobama',
                            style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color:  Color.fromRGBO(231, 187, 236, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('13:00-14:30', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Ručak', style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(185, 104, 199, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('14:30-15:00', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Slobodno vreme', style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(204, 159, 216, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('15:00-15:45', style: TextStyle(fontSize: 20.0, color: Colors.black))
                      ]),
                      Column(children: const [
                        Text('Svečano otvaranje',
                            style: TextStyle(fontSize: 20.0, color: Colors.black))
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
                        Text('15:45-16:00', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Pauza', style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(138, 78, 149, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('16:00-16:45', style: TextStyle(fontSize: 20.0,color: Colors.black))
                      ]),
                      Column(children: const [
                        Text('Predavanje kompanije',
                            style: TextStyle(fontSize: 20.0, color: Colors.black))
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
                        Text('16:45-17:00', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Pauza', style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(138, 78, 149, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('17:00-17:45', style: TextStyle(fontSize: 20.0,color: Colors.black))
                      ]),
                      Column(children: const [
                        Text('Naučno predavanje',
                            style: TextStyle(fontSize: 20.0, color: Colors.black))
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
                        Text('17:45-19:00', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Slobodno vreme', style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(204, 159, 216, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('19:00-20:30', style: TextStyle(fontSize: 20.0))
                      ]),
                      Column(children: const [
                        Text('Večera', style: TextStyle(fontSize: 20.0))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(185, 104, 199, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  rowSpacer,
                  TableRow(
                    children: [
                      Column(children: const [
                        Text('21:00-00:00', style: TextStyle(fontSize: 20.0, color: Colors.black))
                      ]),
                      Column(children: const [
                        Text('Zabavni program',
                            style: TextStyle(fontSize: 20.0, color: Colors.black))
                      ]),
                    ],
                    decoration: const BoxDecoration(
                        color:  Color.fromRGBO(231, 187, 236, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  )
                ],
              ),
            ),
          ])),
      //const Center(child: Text("AGENDA")));
    );
  }
}
