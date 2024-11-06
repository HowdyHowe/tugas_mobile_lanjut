import 'package:flutter/material.dart';

class ResAppbar extends StatelessWidget implements PreferredSizeWidget {
  ResAppbar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: GestureDetector(
        onTap: () {},
        child: Padding(
            padding: const EdgeInsets.all(0),
            child: Icon(Icons.account_circle_outlined)),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 15),
          child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Color.fromARGB(0, 255, 255, 255),
                elevation: 0,
              ),
              onPressed: () async {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              )),
        ),
        Container(
          margin: EdgeInsets.only(right: 15),
          child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Color.fromARGB(0, 255, 255, 255),
                elevation: 0,
              ),
              onPressed: () async {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ),
      ],
      elevation: 0.5,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
