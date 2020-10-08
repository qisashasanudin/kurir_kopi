import 'package:flutter/material.dart';
import 'package:kurir_kopi/models/user.dart';
import 'package:kurir_kopi/screens/authenticate/authenticate.dart';
import 'package:kurir_kopi/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //return either Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
