import 'package:flutter/material.dart';
import 'package:snapchatui/widgets/login_signup_button.dart';
import 'package:snapchatui/widgets/txt_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.blue, size: 35),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "Enter your email",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15),
                    TxtFieldForScreen(
                      label: "Email",
                      obscure: false,
                      validator: (val) => val.isEmpty ? "Enter an email" : null,
                      onChange: (val) {
                        setState(() {
                          return email = val;
                        });
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      error,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LoginAndSignUpButton(
              color: Colors.blue,
              text: "Submit",
              onPress: () async {
                if (_formKey.currentState.validate()) {}
              },
            )
          ],
        ),
      ),
    );
  }
}
