import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/carousal_item.dart';
import 'package:my_portfolio/utils/constants.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "MOBILE APP DEVELOPER",
          style: GoogleFonts.oswald(
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        Text(
          "SAMIULLAH\nKALHORO",
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
            height: 1.3,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          "Flutter developer, based in Karachi",
          style: TextStyle(
            color: kCaptionColor,
            fontSize: 15.0,
            height: 1.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Wrap(
          children: [
            const Text(
              "Need a App? ",
              style: TextStyle(
                color: kCaptionColor,
                fontSize: 15.0,
                height: 1.5,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  " Got a project? Let's talk.",
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 48.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "GET STARTED",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    ),
    image: Image.asset(
      "assets/sami_profile.png",
      fit: BoxFit.contain,
      height: 550.0,
    ),
  ),
);
