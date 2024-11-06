import 'package:flutter/material.dart';
import 'package:flutter_form_app/komponen/card_s.dart';
import 'package:flutter_form_app/menu/profile/profile.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Center(
              child: Container(
                  height: 200, width: 200, child: CardS(title: "Tes"))),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Kelola Akun",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Icon(Icons.arrow_circle_right)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Notifikasi",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.arrow_circle_right)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.arrow_circle_right)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Terms of Service",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.arrow_circle_right)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
