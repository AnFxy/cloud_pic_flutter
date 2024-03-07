import 'package:cloud_pic_flutter/viewmodels/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyTestPage(title: 'JACK'),
    );
  }
}

class MyTestPage extends StatefulWidget {
  const MyTestPage({super.key, required this.title});

  final String title;

  @override
  State<MyTestPage> createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {

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
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Consumer<LoginViewModel>(
                builder: (context, loginViewModel, child) {
                    return Text('输入框输入的值为:\n账号：${loginViewModel.currentText}\n密码：${loginViewModel.currentPW}');
                }
            )
        )
    );
  }
}
