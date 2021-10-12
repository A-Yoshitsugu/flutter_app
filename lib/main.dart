import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  //コメントアウト
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titlelist = ['Amazon', 'ZOZO', 'DAZN'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('パスワードポスト'),
      ),
      body:ListView.builder(
        itemCount: titlelist.length,
          itemBuilder: (BuildContext context, int i){
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    ///画面遷移の処理
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(titlelist[i], 'IDを表示', 'パスワードを表示')));
                  },
                leading: Icon(Icons.vpn_key),
                title: Text(titlelist[i]),
              ),
                Divider(),
              ],
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ///ボタンが押された時の処理
          titlelist.add('Google');
          print(titlelist);
          setState(() {

          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

