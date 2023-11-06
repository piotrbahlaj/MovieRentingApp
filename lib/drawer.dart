import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projekt_testowy/utilities/drawer_tile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(244, 243, 243, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(top: 40, bottom: 8, left: 25),
              child: Text(
                'MoviePlanet',
                style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const DrawerTile(
              title: 'History',
              icon: Icon(
                Icons.history,
                color: Colors.black54,
              ),
            ),
            Divider(
              color: Colors.grey.shade400,
              thickness: 1,
            ),
            const DrawerTile(
              title: 'Notifications',
              icon: Icon(
                Icons.notifications,
                color: Colors.black54,
              ),
            ),
            Divider(
              color: Colors.grey.shade400,
              thickness: 1,
            ),
            const DrawerTile(
              title: 'Help',
              icon: Icon(
                Icons.help,
                color: Colors.black54,
              ),
            ),
            Divider(
              color: Colors.grey.shade400,
              thickness: 1,
            ),
            const SizedBox(
              height: 280,
            ),
            SwitchListTile(
              contentPadding: const EdgeInsets.all(30),
              title: const Text(
                'Dark Mode',
                style: TextStyle(
                  color: Colors.black87,
                ), // Text color of the switch tile
              ),
              activeColor:
                  Colors.white, // Color of the switch when it is active (ON)
              value: _isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
