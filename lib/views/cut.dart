import 'package:flutter/material.dart';

class CutPage extends StatelessWidget {
  const CutPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCutPage(title: 'JACK'),
    );
  }
}

class MyCutPage extends StatefulWidget {
  const MyCutPage({super.key, required this.title});

  final String title;

  @override
  State<MyCutPage> createState() => _MyCutPageState();
}

class _MyCutPageState extends State<MyCutPage> {

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
            child: Text('AI剪辑')
        )
    );
  }
}
