// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot_first_project/views/login_ui.dart';

class PasswordChangeUi extends StatelessWidget {
  const PasswordChangeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500,
            ),
            Image.asset(
              'assets/images/img_correct.png',
              width: 80,
            ),
             Align(
                alignment: Alignment.center,
                child: Text(
                  'Password Changed!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Your password has been changed ',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'successfully.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUi(),
                  ),
                );
              },
              child: Text(
                'Back to Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(
                  350,
                  55,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}