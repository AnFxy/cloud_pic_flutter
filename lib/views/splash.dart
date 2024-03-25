import 'dart:async';
import 'package:cloud_pic_flutter/viewmodels/login_view_model.dart';
import 'package:cloud_pic_flutter/views/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:package_info/package_info.dart';
import '../utils/screen_util.dart';
import '../styles/xy_view.dart';
import '../styles/xy_text_style.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'JACK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentSecond = 3; // 默认 2 秒
  Timer? _timer;
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  void startCountDown(int time) {
    if (_timer != null) {
      _timer?.cancel();
      _timer = null;
    }

    if(time <= 0) {
      return;
    }
    const repeatPeriod = Duration(seconds: 1);
    _timer = Timer.periodic(repeatPeriod, (timer) {
      // 读秒返回
      if (currentSecond <= 0) {
        timer.cancel();
        // 进入首页
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
        return;
      }
      setState(() {
        currentSecond--;
      });
    });
  }

  Future<void> initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  void initState() {
    super.initState();
    // 开始执行倒计时
    startCountDown(currentSecond);
    // 获取安装包信息
    initPackageInfo();
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer?.isActive == true) {
      _timer?.cancel();
      _timer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: SimpleView.gradientDecoration,
        child: Column(
            children: <Widget>[
              SizedBox(height: ScreenUtil.get().statusBarHeight),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: SimpleView.whiteRadius10,
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    width: 60,
                    alignment: Alignment.center,
                    child: Text(
                        '${currentSecond}s',
                        style: PrimaryTextStyle.boldBlackText18
                    ),
                  ),
                  const SizedBox(width: 20)
                ],
              ),
              const Expanded(child: SizedBox()),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  LottieBuilder.asset(
                      "json/blue_fish.json",
                      width: ScreenUtil.get().screenWidth,
                      height: ScreenUtil.get().screenWidth
                  ),
                  Positioned(
                      bottom: 50,
                      child: Container(
                          decoration: SimpleView.whiteRadiusShadow10,
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          child: Text('V${_packageInfo.version}', style: PrimaryTextStyle.boldBlackText14,)
                      ),
                  )
                ],
              )
            ]
        ),
      )
    );
  }
}
