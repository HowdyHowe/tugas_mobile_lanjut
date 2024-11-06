import 'package:flutter/material.dart';
import 'package:flutter_form_app/komponen/card_s.dart';
import 'package:flutter_form_app/komponen/card_xl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List cardlist = [
    "card 1",
    "card 2",
    "card 3",
    "card 4",
    "card 5",
    "card 6",
    "card 7",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Guest",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Widget Grid View",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.keyboard_arrow_right_outlined)
            ],
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 130,
                  child: CardS(
                    title: cardlist[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "Widget Grid View",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.keyboard_arrow_right_outlined)
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: cardlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 200,
                  child: CardXL(
                    title: cardlist[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}