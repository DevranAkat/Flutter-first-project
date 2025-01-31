import 'package:flutter/material.dart';
import 'package:flutter_app/globals/app_colors.dart';
import 'package:flutter_app/widgets/top_bar.dart';
import 'package:flutter_app/widgets/bottom_navbar.dart';
import 'package:flutter_app/widgets/prayer_times.dart';
import 'package:flutter_app/widgets/todays_date.dart';
import 'package:flutter_app/widgets/to_prayer_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30475E),
      appBar: topBar(title: 'Home'),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 30, 32, 10),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                DateContainer(),
                Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
                ToPrayerContainer(),
                Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
                PrayerTimesContainer()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

