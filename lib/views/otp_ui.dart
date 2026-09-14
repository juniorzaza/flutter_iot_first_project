// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot_first_project/views/new_password_ui.dart';

class OtpUi extends StatefulWidget {
  const OtpUi({super.key});

  @override
  State<OtpUi> createState() => _OtpUiState();
}

class _OtpUiState extends State<OtpUi> {
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
                  'OTP Verification',
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
                  'Enter the verification code we just sent on your',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                   'email address.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.all(
                          20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.all(
                          20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.all(
                          20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.all(
                          20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  //เปิดไปหน้า OtpUI แบบย้อนกลับได้
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPasswordUi()
                    ),
                  );
                },
                child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width, //ความกว้างเต็มหน้าจอ
                    55, //ความสูง
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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