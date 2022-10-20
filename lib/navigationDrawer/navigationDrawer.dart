import 'package:flutter/material.dart';
import 'createDrawerBodyItem.dart';
import 'createBodyHeader.dart';
import '../routes/pageRoutes.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Početna',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.home),
          ),

          createDrawerBodyItem(
              icon: Icons.view_agenda,
              text: 'Agenda',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, pageRoutes.agenda)
          ),
          createDrawerBodyItem(
              icon: Icons.map,
              text: 'Mapa Palića',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, pageRoutes.map)
          ),

          createDrawerBodyItem(
              icon: Icons.notifications_active,
              text: 'Notifikacije',
              onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.notification)
          ),
          const Divider(),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}