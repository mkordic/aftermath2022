import 'package:flutter/material.dart';
import '../../navigationDrawer/navigationDrawer.dart';
import '../../routes/agendaPagesRoutes.dart';
import '../../glowingButton.dart';

class day4 extends StatelessWidget {
  static const String routeName = '/day4';

  const day4({super.key});

  static const rowSpacer = TableRow(children: [
    SizedBox(
      height: 5,
    ),
    SizedBox(
      height: 5,
    )
  ]);

  static const List<String> times = [
    '08:00-10:00',
    '10:00-10:45',
    '10:45-11:00',
    '11:00-11:45',
    '11:45-12:00',
    '12:00-12:45',
    '12:45-13:00',
    '13:00-15:00',
    '15:00-16:00',
    '16:00-17:00',
    '17:00-18:00',
    '18:00-18:15',
    '18:15-19:00',
    '19:00-20:30',
    '21:00-00:00'
  ];
  static const List<String>entries = [
    'Doručak',
    'Bosch',
    'Pauza',
    'Banca Intesa',
    'Pauza',
    'PlayStudios',
    'Slobodno vreme',
    'Ručak i simulacija intervjua',
    'Simulacija intervjua',
    'Slobodno vreme',
    'Company circle',
    'Pauza',
    'Svečano zatvaranje',
    'Večera',
    'Žurka u klubu'
  ];
  static const List<String>description = [
    '',
    'Obrada i istraživanje podataka unutar Bosch TOP98 inovativnog projekta',
    '',
    'Business inteligence u modernom bankarstvu',
    '',
    'Dizajn matematike u igrama',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Dan 4"), backgroundColor: const Color(0xff73529f)),
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
              Expanded(
                  child:ListView.separated(
                    itemCount: entries.length,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading: Text(times[index],style: TextStyle(color: Colors.white),),
                        title: Text(entries[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                        subtitle: Text(description[index],style: TextStyle(color: Colors.purple[100],fontWeight: FontWeight.bold),),
                        tileColor: Colors.purple,
                      );
                    },
                    separatorBuilder: (BuildContext context,int index)=>
                    const Divider(color: Colors.black,),
                  )
              )
              // Container(
              //   margin: const EdgeInsets.all(10),
              //   child: SingleChildScrollView(
              //     child: Table(
              //       columnWidths: const {
              //         0: FixedColumnWidth(120),
              //         1: FlexColumnWidth()
              //       },
              //       children: [
              //         TableRow(
              //           children: [
              //             Column(
              //               children: const [
              //                 Text('08:00-10:00',
              //                     style: TextStyle(fontSize: 18.0))
              //               ],
              //             ),
              //             Column(children: const [
              //               Text('Doručak', style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(185, 104, 199, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('10:00-10:45',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Bosch',
              //                   style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
              //               Text('Obrada i istraživanje podataka unutar Bosch TOP98 inovacionog projekta',
              //                   textAlign: TextAlign.center,
              //                   style: TextStyle(
              //                       fontSize: 12.0, color: Colors.black))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(242, 228, 244, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('10:45-11:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Pauza',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color:  Color.fromRGBO(138, 78, 149, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('11:00-11:45',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Banca Intesa',
              //                   style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
              //               Text('Business inteligence u modernom bankarstvu',
              //                   textAlign: TextAlign.center,
              //                   style: TextStyle(
              //                       fontSize: 12.0, color: Colors.black))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(242, 228, 244, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('11:45-12:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Pauza', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.center)
              //             ]),
              //           ],
              //           decoration: //BoxDecoration(color: Color.fromRGBO(223, 176, 211, 1),
              //               const BoxDecoration(
              //                   color: Color.fromRGBO(138, 78, 149, 1.0),
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('12:00-12:45',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Playstudios',
              //                   style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
              //               Text('Dizajn matematike u igrama',
              //                   textAlign: TextAlign.center,
              //                   style: TextStyle(
              //                       fontSize: 12.0, color: Colors.black))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(242, 228, 244, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('12:45-13:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Slobodno vreme',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(204, 159, 216, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('13:00-15:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Ručak i simulacija intervjua',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(185, 104, 199, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('15:00-16:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Simulacija intervjua',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: //BoxDecoration(color: Color.fromRGBO(217, 131, 166, 1),
              //               const BoxDecoration(
              //                   color: Color.fromRGBO(242, 228, 244, 1.0),
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('16:00-17:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Slobodno vreme',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(204, 159, 216, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('17:00-18:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Company circle',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(242, 228, 244, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('18:00-18:15',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Pauza', style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(138, 78, 149, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('18:15-19:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Svečano zatvaranje',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(242, 228, 244, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('19:00-20:30',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Večera', style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(185, 104, 199, 1.0),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         ),
              //         rowSpacer,
              //         TableRow(
              //           children: [
              //             Column(children: const [
              //               Text('21:00-00:00',
              //                   style: TextStyle(fontSize: 18.0))
              //             ]),
              //             Column(children: const [
              //               Text('Žurka u klubu',
              //                   style: TextStyle(fontSize: 17.0))
              //             ]),
              //           ],
              //           decoration: const BoxDecoration(
              //               color: Color.fromRGBO(231, 187, 236, 1),
              //               borderRadius: BorderRadius.all(Radius.circular(7))),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ]))
        );
  }
}
