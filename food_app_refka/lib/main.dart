import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_menu.dart';
import 'cart_menu.dart';
import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainMenu(),
      // home: CartMenu(),
      home: HomePage(),
    )
  );
}