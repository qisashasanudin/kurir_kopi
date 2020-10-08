import 'package:flutter/material.dart';
import 'package:kurir_kopi/screens/authenticate/authenticate.dart';
import 'package:kurir_kopi/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget
    return Authenticate();
  }
}
