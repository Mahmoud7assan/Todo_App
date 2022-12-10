import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Settings_Screen/Settings_Screen.dart';
import 'package:todo_app/Task_Screen.dart';
import 'package:todo_app/provider/AppConfig.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = 'Home_screen';

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfig>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.todolist),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (index) {
          selected = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: AppLocalizations.of(context)!.todolist),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settings),
        ],
      ),
      body: tabs[selected],
    );
  }

  List<Widget> tabs = [Task_Screen(), Setting_Screen()];
}
