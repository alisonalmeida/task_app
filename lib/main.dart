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
      routes: {},
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
                  "Manage Your Task",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromRGBO(166, 160, 210, 1)),
                          padding: defaultPadding,
                          height: 50,
                          width: mediaQueryData.size.width * 0.4,
                        ),
                        Positioned(
                          right: 5,
                          top: 5,
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 45),
                            child: CircleAvatar(),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromRGBO(166, 160, 210, 1)),
                      padding: defaultPadding,
                      height: 50,
                      width: mediaQueryData.size.width * 0.4,
                    ),
                  ],
                ),
              ],
            ),
          )),
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
        style: mainTheme.iconButtonTheme.style,
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
          style: mainTheme.iconButtonTheme.style,
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
