import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class notificationPage extends StatefulWidget {
  static const String routeName = '/notificationPage';

  const notificationPage({super.key});

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {

  final database = FirebaseDatabase.instance.ref();
  // final announcementRef = FirebaseDatabase.instance.ref("https://aftermath-a85bf-default-rtdb.europe-west1.firebasedatabase.app/announcements");
  String _announcement_1 = '';
  String _announcement_2 = '';
  String _announcement_3 = '';
  String _announcement_4 = '';
  String _announcement_5 = '';

  String _announcement_1_date = '';
  String _announcement_2_date = '';
  String _announcement_3_date = '';
  String _announcement_4_date = '';
  String _announcement_5_date = '';

  String _announcement_1_time = '';
  String _announcement_2_time = '';
  String _announcement_3_time = '';
  String _announcement_4_time = '';
  String _announcement_5_time = '';


  @override
  void initState() {
    super.initState();
    _activateListeners();
  }
  void _activateListeners(){
    database.child("announcements/1/text").onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        _announcement_1 = description.toString();
      });
    });

    database.child("announcements/1/date").onValue.listen((event) {
      final date = event.snapshot.value;
      setState(() {
        _announcement_1_date = date.toString();
      });
    });

    database.child("announcements/1/time").onValue.listen((event) {
      final time = event.snapshot.value;
      setState(() {
        _announcement_1_time = time.toString();
      });
    });

    database.child("announcements/2/text").onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        _announcement_2 = description.toString();
      });
    });

    database.child("announcements/2/date").onValue.listen((event) {
      final date = event.snapshot.value;
      setState(() {
        _announcement_2_date = date.toString();
      });
    });

    database.child("announcements/2/time").onValue.listen((event) {
      final time = event.snapshot.value;
      setState(() {
        _announcement_2_time = time.toString();
      });
    });

    database.child("announcements/3/text").onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        _announcement_3 = description.toString();
      });
    });

    database.child("announcements/3/date").onValue.listen((event) {
      final date = event.snapshot.value;
      setState(() {
        _announcement_3_date = date.toString();
      });
    });

    database.child("announcements/3/time").onValue.listen((event) {
      final time = event.snapshot.value;
      setState(() {
        _announcement_3_time = time.toString();
      });
    });

    database.child("announcements/4/text").onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        _announcement_4 = description.toString();
      });
    });

    database.child("announcements/4/date").onValue.listen((event) {
      final date = event.snapshot.value;
      setState(() {
        _announcement_4_date = date.toString();
      });
    });

    database.child("announcements/4/time").onValue.listen((event) {
      final time = event.snapshot.value;
      setState(() {
        _announcement_4_time = time.toString();
      });
    });

    database.child("announcements/5/text").onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        _announcement_5 = description.toString();
      });
    });

    database.child("announcements/5/date").onValue.listen((event) {
      final date = event.snapshot.value;
      setState(() {
        _announcement_5_date = date.toString();
      });
    });

    database.child("announcements/5/time").onValue.listen((event) {
      final time = event.snapshot.value;
      setState(() {
        _announcement_5_time = time.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notifications"),
            backgroundColor: Colors.purple.shade300
        ),
        drawer: navigationDrawer(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 17),
            ),
            notification(1),
            notification(2),
            notification(3),
            notification(4),
            notification(5)
            ],
          )
        ),
    );
  }


  Widget notification(int index) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        border: Border.all(color:Colors.purple.shade100,width: 10),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.purple,
              offset: Offset(5,5)

          )
        ]
    ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  message(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade300
      ),
      child: Icon(Icons.notifications, size: 25, color: Colors.purple[700]),
    );
  }

  Widget message(int index) {
    double textSize = 14;
    return RichText(
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: 'Norification\n',
        style: TextStyle(
            fontSize: textSize,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text:  index == 1 ? _announcement_1 :
            (index == 2 ? _announcement_2 :
            index == 3 ? _announcement_3 :
            index == 4 ? _announcement_4 :
            index == 5 ? _announcement_5 :
            "Nema obavestenja!"),
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            index == 1 ? _announcement_1_date :
            index == 2 ? _announcement_2_date :
            index == 3 ? _announcement_3_date :
            index == 4 ? _announcement_4_date :
            index == 5 ? _announcement_5_date :
            "-",
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
          Text(
            index == 1 ? _announcement_1_time :
            index == 2 ? _announcement_2_time :
            index == 3 ? _announcement_3_time :
            index == 4 ? _announcement_4_time :
            index == 5 ? _announcement_5_time :
            "-",
            style: const TextStyle(
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}