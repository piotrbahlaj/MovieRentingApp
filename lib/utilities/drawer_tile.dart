import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: GoogleFonts.lato(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
