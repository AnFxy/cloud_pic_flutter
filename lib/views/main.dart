import 'package:cloud_pic_flutter/views/cut.dart';
import 'package:cloud_pic_flutter/views/home.dart';
import 'package:cloud_pic_flutter/views/setting.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyMainPage(title: 'JACK'),
    );
  }
}

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key, required this.title});

  final String title;

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  int _currentIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    CutPage(),
    SettingPage()
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
          alignment: Alignment.topLeft,
          child: _pages.elementAt(_currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/album.png')), label: '相册'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/robot.png')), label: 'AI剪'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/setting.png')), label: '我的')
          ],
          currentIndex: _currentIndex,
          onTap: _onItemTap,
        ),
    );
  }
}
