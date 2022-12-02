import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class AppAd extends StatelessWidget {
  const AppAd({super.key});

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Container(
              child: Flex(
                direction: constraints.maxWidth > 720
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  Expanded(
                      flex: constraints.maxWidth > 720.0 ? 1 : 0,
                      child: Image.asset(
                        "assets/ios.png",
                        width: constraints.maxWidth > 720.0 ? null : 350.0,
                      )),
                  Expanded(
                      flex: constraints.maxWidth > 720.0 ? 1 : 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IOS APP",
                            style: GoogleFonts.oswald(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "UNIVERSAL\nSMART HOME APP",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              height: 1.3,
                              fontSize: 35.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            "Saw departed what each maddest finds congealed festal, not sorrow dear awake happy shamed and childe, than a were break he pleasure festal hall who, vast ever and resolved there.",
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.5,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(8.0)),
                                  height: 48.0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Center(
                                      child: Text(
                                        "EXPLORE MORE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  height: 48.0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Center(
                                      child: Text(
                                        "NEXT APP",
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(1000.0),
        tablet: _buildUi(760.0),
        mobile: _buildUi(MediaQuery.of(context).size.width * .8),
      ),
    );
  }
}
