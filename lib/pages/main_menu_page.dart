import 'package:flutter/material.dart';

class MainMenuPage extends StatefulWidget {
  static const routeName = "/main_menu";

  MainMenuPage({Key key}) : super(key: key);

  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOREM IPSUM"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _menuButtons(),
        ),
      ),
    );
  }

  List<Widget> _menuButtons() {
    return [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          primary: Colors.blue,
          onPrimary: Colors.yellow,
        ),
        onPressed: () => Navigator.of(context).pushNamed("/account"),
        child: Text(
          "LOREM IPSUM",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    ];
  }
}