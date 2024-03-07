import 'package:cloud_pic_flutter/styles/xy_text_style.dart';
import 'package:cloud_pic_flutter/styles/xy_view.dart';
import 'package:cloud_pic_flutter/utils/screen_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

  final int _albumCount = 0;
  final int _pictureCount = 0;

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
        body: Column(
          children: [
            SizedBox(height: ScreenUtil.get().statusBarHeight),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 48, height: ScreenUtil.get().appBarHeight,),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('云相册', style: PrimaryTextStyle.blackText18,),
                        const SizedBox(height: 4),
                        Text('$_albumCount相册 $_pictureCount图片', style: PrimaryTextStyle.primaryText12,)
                      ]),
                ),
                SizedBox(
                  width: 48,
                  height: 24,
                  child: Image.asset('images/cus.png', width: 24, height: 24)
                )
              ],
            ),
            Expanded(
                child: Container(
                  decoration: SimpleView.gradientDecoration,
                  child: GridView.count(
                      crossAxisCount: 2,
                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                      children: List.generate(9, (index) {
                        return Container(
                          decoration: SimpleView.grayRadius10,
                          margin:  const EdgeInsets.fromLTRB(0, 0, 10, 15),
                          child: Center(child: Image.asset('images/new_album.jpg', width: 120, height: 120))
                        );
                      }),
                  )
                )
            )
          ],
        )
    );
  }
}
