import 'package:flutter/material.dart';

class StringProvider extends ChangeNotifier {
  late String _username;
   String name  = "";
   String mobilenumber = ""; 
   String DOB = "";

  String get username => _username;
  String get sendnameget => name;
  String get sendmobilenumberget=> mobilenumber;
  String get sendDOBget => DOB;


  set usernameclass(String value) {
    _username = value;
    notifyListeners();
  }

  set sendnameset (String value){
    name = value;
    notifyListeners();
  }
  set sendmobilenumberset (String value){
    mobilenumber = value;
    notifyListeners();
  }
  set sendDOBset (String value){
    DOB = value;
    notifyListeners();
  }
}