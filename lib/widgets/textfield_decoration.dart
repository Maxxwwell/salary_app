import 'package:flutter/material.dart';

InputDecoration textFieldDecoration(BuildContext context) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    labelText: 'Salary',
    labelStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Theme.of(context).primaryColor,
    ),
    prefixText: 'GH₵ ',
    hintText: 'Enter your monthly salary',
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
      ),
    ),
  );
}
