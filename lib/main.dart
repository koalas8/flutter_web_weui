import 'package:flutter_web/material.dart';
import 'package:weui/example/TestPlugin.dart';

void main()
{
  runApp(new RouterWidget());
}


/*
 * 功能：路由壳子
 * 需要传入的键：
 * 传入的值类型：
 * 传入的值含义：
 * 是否必传 ：
 * 作者：郑朝军 on 2019/4/7 23:23
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 */
class RouterWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      home: new TestPlugin(),
    );
  }
}