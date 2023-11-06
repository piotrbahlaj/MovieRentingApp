import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: const Icon(
          Icons.menu,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        color: Colors.black,
      );
    }),
  );
}
