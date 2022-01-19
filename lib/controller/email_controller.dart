import 'package:flutter/material.dart';

class EmailController extends ChangeNotifier {

  static EmailController instance = EmailController();

  String email = '';

  sendText(text){
    email = text;
  }
}