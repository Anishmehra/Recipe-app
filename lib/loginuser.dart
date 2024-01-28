import 'package:flutter/material.dart';

class Loginuser extends StatelessWidget {
  Loginuser({super.key, required this.hinttext, required this.obstrure,required this.contrler});

  final String hinttext;
  final bool obstrure;
  TextEditingController contrler;
  void Function(String)? validator;


  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: contrler,
      decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
      ),
      obscureText: obstrure,
      // validator: validator,
    );
  }
}