import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';
import '../routes/agendaPagesRoutes.dart';

class agendaPage extends StatelessWidget {
  static const String routeName = '/agendPage';

  const agendaPage({super.key});

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
          title: const Text("Agenda"), backgroundColor: Colors.purple.shade300),
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
            const Text('DAN 1',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    color: Colors.deepPurpleAccent)),
            const SizedBox(height: 30),
            Container(
              child:ListView(
              padding: EdgeInsets.all(20),
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 50),
                ),
                Center(
                  child: Text(
                    'Sooraj S Nair',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
    )

          ])),
    );
  }
}
