import 'dart:ui';

import 'package:aftermath/firebase_options.dart';
import 'package:aftermath/fragments/mainThirdPage.dart';
import 'package:aftermath/fragments/mapPage.dart';
import 'package:aftermath/navigationDrawer/navigationDrawer.dart';
import 'package:aftermath/routes/pageRoutes.dart';
import 'package:aftermath/routes/agendaPagesRoutes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import'package:flutter_map/flutter_map.dart';
import 'package:flutter/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import 'fragments/agendaPage.dart';
import 'fragments/agendaPages/day1.dart';
import 'fragments/agendaPages/day2.dart';
import 'fragments/agendaPages/day3.dart';
import 'fragments/agendaPages/day4.dart';
import 'fragments/agendaPages/day5.dart';
import 'fragments/mainFirstPage.dart';
import 'fragments/mainFourthPage.dart';
import 'fragments/mainSecondPage.dart';
import 'fragments/notificationPage.dart';


Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  String? token;
  if (defaultTargetPlatform != TargetPlatform.iOS) {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    token = await messaging.getToken(
        vapidKey:
            'BF-y0ChGpSRl5HW1tqaSF3kBDYjlGrfD1CI1EY3arOmimWUoNeg7JEqV9F_0NlmJqgHx6l5o7UO_gsj3LVcGI9c');
  }

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {


    if (message.notification != null) {

    }
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await Future.delayed(const Duration(seconds: 3));
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      theme: ThemeData(
          primaryColor: Colors.purple,
          textTheme: GoogleFonts.montserratTextTheme(
              Theme.of(context).textTheme
          )
      ),
      title: 'AfterMath',
      home: Scaffold(
        // drawer: navigationDrawer(),
        // appBar: AppBar(
        //   backgroundColor: Colors.purple.shade300,
        //   title: const Text('AfterMath'),
        // ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        child: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if(snapshot.hasError) {
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
    }
    return PageView(
      controller: pageControler,
      children: const <Widget>[

        mainFirstPage(),
        mainSecondPage(),
        mainThirdPage(),
        mainFourthPage()
      ],

    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}