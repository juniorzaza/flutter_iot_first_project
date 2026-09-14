// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot_first_project/views/forget_ui.dart';
import 'package:flutter_iot_first_project/views/homr_ui.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
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
                    Navigator.push(
                       context,
                      MaterialPageRoute(
                        builder: (context) => HomeUI(),
                      ),
                    );
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
                  'Walcome to SAU! Glad',
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
                  'to see you Again!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
                  hintText: 'Enter your email',
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.all(
                    20,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.all(
                    20,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
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
              SizedBox(
                height: 30,
              ),
              Text(
                'Or Login with',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_facebook.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        110,
                        55,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_google.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        110,
                        55,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_apple.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        110,
                        55,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 330,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
