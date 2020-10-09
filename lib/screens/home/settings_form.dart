import 'package:flutter/material.dart';
import 'package:kurir_kopi/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugar = ['0', '1', '2', '3', '4'];

  String _currentName;
  String _currentSugar;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Pengaturan',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Nama'),
            validator: (val) => val.isEmpty ? 'Masukkan nama anda' : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          SizedBox(height: 20.0),
          DropdownButtonFormField(
            decoration: textInputDecoration,
            value: _currentSugar ?? '0',
            items: sugar.map((sugar) {
              return DropdownMenuItem(
                value: sugar,
                child: Text('$sugar sendok gula'),
              );
            }).toList(),
            onChanged: (val) => setState(() => _currentSugar = val),
          ),
          SizedBox(height: 20.0),
          Slider(
            value: (_currentStrength ?? 100).toDouble(),
            activeColor: Colors.brown[_currentStrength ?? 100],
            inactiveColor: Colors.brown[_currentStrength ?? 100],
            min: 100.0,
            max: 900.0,
            divisions: 8,
            onChanged: (val) => setState(() => _currentStrength = val.round()),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            color: Colors.brown[400],
            child: Text(
              'Perbaharui',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentSugar);
              print(_currentStrength);
            },
          ),
        ],
      ),
    );
  }
}
