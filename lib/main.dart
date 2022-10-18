import 'package:aftermath/fragments/mapPage.dart';
import 'package:aftermath/navigationDrawer/navigationDrawer.dart';
import 'package:aftermath/routes/pageRoutes.dart';
import 'package:aftermath/routes/agendaPagesRoutes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'fragments/agendaPage.dart';
import 'fragments/agendaPages/day1.dart';
import 'fragments/agendaPages/day2.dart';
import 'fragments/agendaPages/day3.dart';
import 'fragments/agendaPages/day4.dart';
import 'fragments/agendaPages/day5.dart';
import 'fragments/mainFirstPage.dart';
import 'fragments/notificationPage.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp ({Key? key}) : super(key : key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purple,
          textTheme: GoogleFonts.montserratTextTheme(
              Theme.of(context).textTheme
          )
      ),
      title: 'AfterMath',
      home: Scaffold(
        drawer: navigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          title: const Text('AfterMath'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/grid.png"),
              fit: BoxFit.cover,
            ),
          ),
        child: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if(snapshot.hasError) {
                print('Ovde ima greske ${snapshot.error.toString()}');
                return const Text("Nesto nije u redu");
              } else if(snapshot.hasData){
                return const MyStatefulWidget();
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          ),
        ) ,
      ),
      routes: {
        pageRoutes.home: (context) => MyApp(),
        pageRoutes.agenda: (context) => day1(),
        pageRoutes.map: (context) => mapPage(),
        pageRoutes.notification: (context) => notificationPage(),
        agendaPagesRoutes.first: (context) => day1(),
        agendaPagesRoutes.second: (context) => day2(),
        agendaPagesRoutes.third: (context) => day3(),
        agendaPagesRoutes.fourth: (context) => day4(),
        agendaPagesRoutes.fifth: (context) => day5(),
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyStatefulWidgetState();
  }
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  final database = FirebaseDatabase.instance.ref();
  // final announcementRef = FirebaseDatabase.instance.ref("https://aftermath-a85bf-default-rtdb.europe-west1.firebasedatabase.app/announcements");
  String _announcement = 'Announcement goes here';
  @override
  void initState() {
    super.initState();
    _activateListeners();
  }
  void _activateListeners(){
    database.child("announcements/1/text").onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        _announcement = description.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final pageControler = PageController();
    if (_announcement == null){
      print("Null je");
    }
    return PageView(
      controller: pageControler,
      children: const <Widget>[

        mainFirstPage(),

        Center(
          child: Text("second page"),
        ),
        Center(
          child: Text("third page"),
        ),
      ],

    );
  }
}
