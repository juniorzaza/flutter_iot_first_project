// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot_first_project/views/password_change_ui.dart';

class NewPasswordUi extends StatefulWidget {
  const NewPasswordUi({super.key});

  @override
  State<NewPasswordUi> createState() => _NewPasswordUiState();
}

class _NewPasswordUiState extends State<NewPasswordUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 70,
            left: 35,
            right: 35,
            bottom: 50,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.grey[700],
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size(
                      40,
                      40,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create new password',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your new password must be unique from those',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'previously used',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'New Password',
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.all(
                    20,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Confirm Password',
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.all(
                    20,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PasswordChangeUi()
                    ),
                  );
                },
                child: Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}