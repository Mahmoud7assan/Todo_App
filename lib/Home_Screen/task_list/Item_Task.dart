import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Home_Screen/task_list/Edit_Task.dart';
import 'package:todo_app/firebase_utils.dart';
import 'package:todo_app/model/add_task.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_app/mytheme.dart';
import 'package:todo_app/provider/AppConfig.dart';

class Item_Task extends StatelessWidget {
  Task task;

  Item_Task({required this.task});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    var provider = Provider.of<AppConfig>(context, listen: false);
    return Container(
      margin: EdgeInsets.only(left: 1),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(20),
              onPressed: (context) {
                deletTaskfromFireStore(task)
                    .timeout(Duration(milliseconds: 500), onTimeout: () {
                  print('task was deleted');
                });
              },
              backgroundColor: MyThemes.redColor,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: AppLocalizations.of(context)!.delet,
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.all(15),
          height: 115,
          width: double.infinity,
          decoration: BoxDecoration(
              color: MyThemes.whiteColor,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 80,
                width: 4,
                color: task.isDone == true
                    ? MyThemes.greenColor
                    : MyThemes.blueColor,
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(Edit_Task.routeName, arguments: task);
                    },
                    icon: Icon(Icons.settings)),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      task.title,
                      style: task.isDone == true
                          ? Theme.of(context).textTheme.headline3
                          : Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(task.description,
                        style: task.isDone == true
                            ? Theme.of(context).textTheme.headline3
                            : Theme.of(context).textTheme.headline4,)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  provider.EditeIsDone(task);
                },
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        color: task.isDone == true ? null : MyThemes.blueColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: task.isDone == true
                        ? Text(
                            AppLocalizations.of(context)!.done,
                            style: Theme.of(context).textTheme.headline3,
                          )
                        : Icon(
                            Icons.check,
                            size: 20,
                            color: Colors.white,
                          )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
