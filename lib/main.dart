import 'package:flutter/material.dart';
import 'package:kurir_kopi/models/user.dart';
import 'package:kurir_kopi/screens/wrapper.dart';
import 'package:kurir_kopi/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
