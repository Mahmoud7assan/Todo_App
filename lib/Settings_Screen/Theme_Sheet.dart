import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/AppConfig.dart';

class Theme_Sheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfig>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.ChangeTheme(ThemeMode.light);
            },
              child: Text(AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.headline3)),
          InkWell(onTap: (){
            provider.ChangeTheme(ThemeMode.dark);
          },child: Text(AppLocalizations.of(context)!.dark,style: Theme.of(context).textTheme.headline3))
        ],
      ),
    );
  }
}
