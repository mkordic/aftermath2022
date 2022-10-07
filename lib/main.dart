import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_database/firebase_database.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
      title: 'AfterMath',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Savremena matematike i njene primene')
        ),
        body: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if(snapshot.hasError) {
                print('Ovde ima greske ${snapshot.error.toString()}');
                return Text("Nesto nije uredu");
              } else if(snapshot.hasData){
                return MyStatefulWidget();
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
        ),
      ) ,
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
      database.child("announcements/prvo/text").onValue.listen((event) {
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
      children: <Widget>[
        Center(
          child: Text(_announcement)
        ),
        const Center(
          child: Text("second page"),
        ),
        const Center(
          child: Text("third page"),
        ),
      ],

    );
  }
}