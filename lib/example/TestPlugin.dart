import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import '../weui.dart';


/*
 * 功能：登陆页
 * 需要传入的键：
 * 传入的值类型：
 * 传入的值含义：
 * 是否必传 ：
 * 作者：郑朝军 on 2019/4/7 23:23
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 */
class TestPlugin extends StatefulWidget
{
  State<StatefulWidget> createState()
  {
    return new TestPluginState();
  }

  static String toStrings()
  {
    return "TestPlugin";
  }
}

/*
 * 页面功能 <br/>
 */
class TestPluginState extends State<TestPlugin>
{
  /*
   * 用户名输入框
   */
  TextEditingController controllerUser = new TextEditingController();

  /*
   * 密码输入框
   */
  TextEditingController controllerPassword = new TextEditingController();

  TestPluginState()
  {
  }

  Widget build(BuildContext context)
  {
    return new MaterialApp(
        home: new Scaffold(
            appBar: createCommonAppBar(),
            body:
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  decoration: new BoxDecoration(
                    border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.grey,
                        ),
                      ),
                      new Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.5),
                        margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                      ),
                      new Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '请输入您的账号',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            controller: controllerUser,
                          ))
                    ],
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  decoration: new BoxDecoration(
                    border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: Icon(
                          Icons.lock_open,
                          color: Colors.grey,
                        ),
                      ),
                      new Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.5),
                        margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                      ),
                      new Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '请输入您的密码',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            controller: controllerPassword,
                          ))
                    ],
                  ),
                ),
                new Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  height: 40,
                  child: new RaisedButton(
                    onPressed: ()
                    {
                      doClickLoginButton();
                    },
                    child: new Text('登陆'),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(28.0)),
                    splashColor: Colors.white,
                    color: Colors.blue,
                  ),
                ),
                new Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: new Align(
                      child: new Text('忘记密码？'),
                      alignment: Alignment.centerRight,
                    ))
              ],
            )));
  }

  /*
   * 创建标题栏<br/>
   */
  AppBar createCommonAppBar()
  {
    return new AppBar(
      leading:
      new IconButton(
        icon: new Icon(Icons.arrow_back),
        onPressed: ()
        {},
      ),
      title: new Text('FlutterDesign'),
      centerTitle: true,
      actions: <Widget>[
        new Container(width: 0, height: 0),
        new Container(width: 0, height: 0),
      ],
      backgroundColor: Colors.blue,
    );
  }


  void doClickLoginButton()
  {
    String user = controllerUser.text;
    String password = controllerPassword.text;
    WeToast.info(context)(user, align: WeToastInfoAlign.bottom);
  }

  void onNetWorkSucceed(String method, Object values)
  {

  }
}
