import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/global.dart';

import '../components/carousel.dart';
import '../components/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                              onPressed: headerItems[index].onTap,
                              child: Text(
                                headerItems[index].title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                    : ListTile(
                        title: Text(headerItems[index].title,
                            style: const TextStyle(color: Colors.white)),
                      );
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 10.0),
              itemCount: headerItems.length),
        )),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [const Header(),
        Carousel(),
        ],
      )
      ),
    );
  }
}
