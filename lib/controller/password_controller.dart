import 'package:flutter/material.dart';

class PasswordController extends ChangeNotifier {

  static PasswordController instance = PasswordController();

  String password = '';

  sendText(text){
    password = text;
  }
}