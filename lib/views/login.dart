import 'package:cloud_pic_flutter/styles/xy_color.dart';
import 'package:cloud_pic_flutter/styles/xy_text_style.dart';
import 'package:cloud_pic_flutter/styles/xy_view.dart';
import 'package:cloud_pic_flutter/utils/screen_util.dart';
import 'package:cloud_pic_flutter/viewmodels/login_view_model.dart';
import 'package:cloud_pic_flutter/views/test.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});


  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  bool _selectedLogin = true;
  bool _checkedPrivacy = false;
  bool _isCloseEyes = true;

  String _currentInputAccountText = "";
  String _currentInputPasswordText = "";
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllerPW = TextEditingController();

  final TextEditingController _controllerPWConfirm = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _changeTab(bool value) {
    setState(() {
      _selectedLogin = value;
    });
  }

  void _updateChecked() {
    setState(() {
      _checkedPrivacy = !_checkedPrivacy;
    });
  }

  void _goTestPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const TestPage()));
  }

  void _goBack() {
    Navigator.of(context).pop(true);
  }

  void _onClickEyes() {
    setState(() {
      _isCloseEyes = !_isCloseEyes;
    });
  }

  void _onLoginClick() {
    setState(() {
      _currentInputAccountText = _controller.text;
      _currentInputPasswordText = _controllerPW.text;
      // 发送数据
      Provider.of<LoginViewModel>(context, listen: false)
          .modifyValue(_currentInputAccountText, _currentInputPasswordText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: SimpleView.gradientDecoration,
            child: Column(
              children: [
                SizedBox(height: ScreenUtil.get().statusBarHeight,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: _goBack,
                      child: SizedBox(
                        width: 48,
                        height: ScreenUtil.get().appBarHeight,
                        child: Center(child: Image.asset('images/back.png', width: 20, height: 20,)),
                      ),
                    ),
                    Text('登录', style: PrimaryTextStyle.blackText18),
                    GestureDetector(
                      onTap: _goTestPage,
                      child: SizedBox(
                        width: 48,
                        height: 24,
                        child: Image.asset('images/cus.png', width: 24, height: 24),
                      ),
                    )
                  ],
                ),
                SimpleView.logoView,
                Container(
                    decoration: SimpleView.whiteRadius10,
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: Column(
                                children: [
                                  Text('登录', style: _selectedLogin ? PrimaryTextStyle.selectedText22 : PrimaryTextStyle.grayText18),
                                  SimpleView.bottomLine(_selectedLogin)
                                ],
                              ),
                              onTap: () =>_changeTab(true),
                            ),
                            const SizedBox(width: 16),
                            GestureDetector(child:
                              Column(
                                children: [
                                  Text('注册', style: !_selectedLogin ? PrimaryTextStyle.selectedText22 : PrimaryTextStyle.grayText18),
                                  SimpleView.bottomLine(!_selectedLogin)
                                ],
                              ),
                              onTap: () => _changeTab(false),
                            ),
                            const Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: _onClickEyes,
                              child: SizedBox(
                                child: Image.asset(_isCloseEyes ? 'images/eyes_closed.png' : 'images/eyes_open.png', width: 20, height: 20),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Stack(
                          children: [
                            TextField(
                              cursorColor: PrimaryColor.selectBlue,
                              decoration: SimpleView.inputDecoration('手机号'),
                              controller: _controller
                            ),
                            Positioned(right: 10, bottom: 10, child: Text('+86', style: PrimaryTextStyle.grayBoldText16))
                          ],
                        ),
                        Stack(
                          children: [
                            TextField(
                              cursorColor: PrimaryColor.selectBlue,
                              obscureText: _isCloseEyes,
                              decoration: SimpleView.inputDecoration('8-16位、字母和数字组合'),
                              controller: _controllerPW
                            ),
                            Positioned(right: 10, bottom: 16, child: Text('忘记密码', style: PrimaryTextStyle.primaryText14,))
                          ],
                        ),
                        if (!_selectedLogin) TextField(
                            cursorColor: PrimaryColor.selectBlue,
                            obscureText: _isCloseEyes,
                            decoration: SimpleView.inputDecoration('确认密码'),
                            controller: _controllerPWConfirm
                        )
                      ],
                    )
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: _updateChecked,
                      child: Container(width: 20, height: 20, decoration: _checkedPrivacy ? SimpleView.selectedBorderRadius10 : SimpleView.grayBorderRadius10),
                    ),
                    const SizedBox(width: 8),
                    Expanded(child: Text('请阅读并勾选同意小鲸鱼相册《隐私协议》和《用户协议》', style: PrimaryTextStyle.blackText14)),
                    const SizedBox(width: 20)
                  ],
                ),
                GestureDetector(
                  onTap: _onLoginClick,
                  child: Container(
                    width: ScreenUtil.get().screenWidth,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    decoration: SimpleView.gradientBlueHDecoration,
                    child: Text('登录', style: PrimaryTextStyle.boldWhiteText18),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 60),
                    Column(
                      children: [
                        Align(child: Image.asset('images/qq.png', width: 30, height: 30)),
                        Text('QQ登录', style: PrimaryTextStyle.primaryText12)
                      ],
                    ),
                    Column(
                      children: [
                        Align(child: Image.asset('images/wechat.png', width: 30, height: 30)),
                        Text('微信登录', style: PrimaryTextStyle.primaryText12)
                      ],
                    ),
                    const SizedBox(width: 60)
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
