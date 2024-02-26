import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MySettingPage(title: 'JACK'),
    );
  }
}

class MySettingPage extends StatefulWidget {
  const MySettingPage({super.key, required this.title});

  final String title;

  @override
  State<MySettingPage> createState() => _MySettingPageState();
}

class _MySettingPageState extends State<MySettingPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Text('设置')
        )
    );
  }
}
