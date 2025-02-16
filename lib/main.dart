import 'package:flutter/material.dart';
import 'package:task_app/app_theme.dart';
import 'package:task_app/consts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: UserAvatar(),
          actions: [AddButton(), NotificationButton()],
        ),
        body: Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "    Manage Your Task",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  MainTaskStatus(
                    mediaQueryData: mediaQueryData,
                    title: "In progress",
                    taskStatusColor: myPurpleColor,
                    statusNumber: 3,
                    titleColor: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MainTaskStatus(
                    mediaQueryData: mediaQueryData,
                    title: "In review",
                    taskStatusColor: myGreyColor,
                    statusNumber: 8,
                    titleColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  MainTaskStatus(
                    mediaQueryData: mediaQueryData,
                    title: "In progress",
                    taskStatusColor: myBlackColor,
                    statusNumber: 6,
                    titleColor: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MainTaskStatus(
                    mediaQueryData: mediaQueryData,
                    title: "In review",
                    taskStatusColor: myGreenColor,
                    //#CBD87D
                    statusNumber: 1,
                    titleColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.black,
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(myGreyColor),
                      iconColor: WidgetStateProperty.all(Colors.black),
                    ),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: myGreyColor,
                      foregroundColor: Colors.black, // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text('Day'),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: myGreenColor,
                      foregroundColor: Colors.black, // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text('Week'),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: myGreyColor,
                      foregroundColor: Colors.black, // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text('Month'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainTaskStatus extends StatelessWidget {
  const MainTaskStatus(
      {super.key,
      required this.mediaQueryData,
      required this.title,
      required this.titleColor,
      required this.taskStatusColor,
      required this.statusNumber});

  final MediaQueryData mediaQueryData;
  final String title;
  final Color titleColor;
  final Color taskStatusColor;
  final int statusNumber;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: taskStatusColor,
          ),
          padding: defaultPadding,
          height: 50,
          width: mediaQueryData.size.width * 0.44,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, color: titleColor),
            ),
          ),
        ),
        Positioned(
          right: 4,
          top: 5,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              statusNumber.toString(),
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: IconButton(
        iconSize: 18,
        onPressed: () {},
        icon: Icon(Icons.notifications_none),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(mainColor),
          iconColor: WidgetStateProperty.all(secondaryColor),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: defaultPadding,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
          iconSize: 18,
        ));
  }
}

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: CircleAvatar(
        backgroundColor: mainColor,
        child: Icon(Icons.person),
      ),
    );
  }
}
