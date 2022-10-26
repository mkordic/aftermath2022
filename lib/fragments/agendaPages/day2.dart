import 'package:flutter/material.dart';
import '../../glowingButton.dart';
import '../../navigationDrawer/navigationDrawer.dart';
import '../../routes/agendaPagesRoutes.dart';

class day2 extends StatelessWidget {
  static const String routeName = '/agendaPages/day2';

  const day2({super.key});

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
    '12:00-13:00',
    '13:00-15:00',
    '15:00-16:00',
    '16:00-16:45',
    '16:45-17:00',
    '17:00-17:45',
    '17:45-19:00',
    '19:00-20:30',
    '21:00-00:00'
  ];
  static const List<String>entries = [
    'Doručak',
    'Stefan Durlević',
    'Pauza',
    'Marija Mikić',
    'Slobodno vreme',
    'Simulacija intervjua',
    'Ručak i simulacija intervjua',
    'Slobodno vreme',
    'Bosch',
    'Pauza',
    'Mladen Canović',
    'Slobodno vreme',
    'Večera',
    'Zabavni program'
  ];
  static const List<String>description = [
    '',
    'Kako napisati dobar CV?',
    '',
    'Dinamički model ljubavi',
    '',
    '',
    '',
    '',
    'Internship in Automotive',
    '',
    'Primena veštačke inteligencije u sportu',
    '',
    '',
    ''
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Dan 2"), backgroundColor: const Color(0xff73529f)),
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
            //const SizedBox(height: 30),
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
        // SingleChildScrollView(
        //     child:Container(
        //       margin: const EdgeInsets.all(10),
        //       child: SingleChildScrollView(
        //
        //         child: Table(
        //           columnWidths: const {
        //             0: FixedColumnWidth(120),
        //             1: FlexColumnWidth()
        //           },
        //           children: [
        //             TableRow(
        //               children: [
        //                 Column(
        //                   children: const [
        //                     Text('08:00-10:00',
        //                         style: TextStyle(fontSize: 18.0))
        //                   ],
        //                 ),
        //                 Column(children: const [
        //                   Text('Doručak', style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(185, 104, 199, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('10:00-10:45', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Stefan Durlević',
        //                       style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
        //                   Text('Kako napisati dobar CV?',
        //                       textAlign: TextAlign.center,
        //                       style: TextStyle(
        //                           fontSize: 12.0, color: Colors.black))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(242, 228, 244, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('10:45-11:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Pauza', style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(138, 78, 149, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('11:00-11:45', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Marija Mikić',
        //                       style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
        //                   Text('Dinamički model ljubavi',
        //                       textAlign: TextAlign.center,
        //                       style: TextStyle(
        //                           fontSize: 12.0, color: Colors.black))
        //                 ]),
        //               ],
        //               decoration: //BoxDecoration(color: Color.fromRGBO(223, 176, 211, 1),
        //                   const BoxDecoration(
        //                       color: Color.fromRGBO(242, 228, 244, 1.0),
        //                       borderRadius:
        //                           BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('11:45-12:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Slobodno vreme',
        //                       style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(204, 159, 216, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('12:00-13:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Simulacija intervjua',
        //                       style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: //BoxDecoration(color: Color.fromRGBO(228, 208, 237, 1),
        //                   const BoxDecoration(
        //                       color: Color.fromRGBO(242, 228, 244, 1.0),
        //                       borderRadius:
        //                           BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('13:00-15:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Ručak i simulacija intervjua',
        //                       textAlign: TextAlign.center,
        //                       style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(185, 104, 199, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('15:00-16:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Slobodno vreme',
        //                       style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: //BoxDecoration(color: Color.fromRGBO(217, 131, 166, 1),
        //                   const BoxDecoration(
        //                       color: Color.fromRGBO(204, 159, 216, 1.0),
        //                       borderRadius:
        //                           BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('16:00-16:45', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Bosch',
        //                       style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
        //                   Text('Internship in Automotive',
        //                       textAlign: TextAlign.center,
        //                       style: TextStyle(
        //                           fontSize: 12.0, color: Colors.black))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(242, 228, 244, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('16:45-17:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Pauza', style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(138, 78, 149, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('17:00-17:45', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Mladen Canović',
        //                       style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
        //                   Text('Primena veštačke inteligencije u sportu',
        //                       textAlign: TextAlign.center,
        //                       style: TextStyle(
        //                           fontSize: 12.0, color: Colors.black))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(242, 228, 244, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('17:45-19:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Slobodno vreme',
        //                       style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(204, 159, 216, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('19:00-20:30', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Večera', style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(185, 104, 199, 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             ),
        //             rowSpacer,
        //             TableRow(
        //               children: [
        //                 Column(children: const [
        //                   Text('21:00-00:00', style: TextStyle(fontSize: 18.0))
        //                 ]),
        //                 Column(children: const [
        //                   Text('Zabavni program',
        //                       style: TextStyle(fontSize: 17.0))
        //                 ]),
        //               ],
        //               decoration: const BoxDecoration(
        //                   color: Color.fromRGBO(231, 187, 236, 1),
        //                   borderRadius: BorderRadius.all(Radius.circular(7))),
        //             )
        //           ],
        //         ),
        //       ),
          ]
          )
      ),
    );
  }
}
