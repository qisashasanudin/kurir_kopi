import 'package:flutter/material.dart';

var textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 3.0),
    borderRadius: BorderRadius.circular(100),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.brown[400], width: 3.0),
    borderRadius: BorderRadius.circular(100),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 3.0),
    borderRadius: BorderRadius.circular(100),
  ),
    focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.brown[400], width: 3.0),
    borderRadius: BorderRadius.circular(100),
  ),
);
