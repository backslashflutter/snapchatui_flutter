import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TxtFieldForScreen extends StatelessWidget {
  // we need some holders
  final String label;
  final Function(String) validator;
  final Function(String) onChange;
  final TextInputType txtType;
  // obscrure for password visibility
  final bool obscure;

  TxtFieldForScreen({
    this.label,
    this.obscure,
    this.onChange,
    this.txtType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 35,
        right: 35,
      ),
      child: TextFormField(
        // whether the provided text is a email name or password
        keyboardType: txtType,
        obscureText: obscure,
        validator: validator,
        onChanged: onChange,
        decoration: InputDecoration(
            labelText: label,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[500]))),
      ),
    );
  }
}
