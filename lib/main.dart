import 'package:flutter/material.dart';
import 'package:flutter_iot_first_project/views/homr_ui.dart';

void main() {
  runApp(FlutterIotFirstProject());
}

class FlutterIotFirstProject extends StatefulWidget {
  const FlutterIotFirstProject({super.key});

  @override
  State<FlutterIotFirstProject> createState() => _FlutterIotFirstProjectState();
}

class _FlutterIotFirstProjectState extends State<FlutterIotFirstProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
    );
  }
}
