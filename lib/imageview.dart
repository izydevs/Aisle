
import 'dart:ui';

import 'package:flutter/material.dart';

import 'constants.dart';

class BlurImageView extends StatelessWidget {
  BlurImageView(this.imageName, this.name);
  final String imageName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width - 120,
      width: MediaQuery.of(context).size.width / 2 - 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: ExactAssetImage(imageName),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        // make
        borderRadius: BorderRadius.circular(16.0),
        // sure we apply clip it properly
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
              alignment: Alignment.bottomLeft,
              color: Colors.grey.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: Constants.SEMI_BOLD,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  ImageView(this.imageName, this.name);

  final String imageName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width - 32,
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: ExactAssetImage(imageName),
          fit: BoxFit.cover,
          alignment: Alignment.lerp(Alignment.topCenter, Alignment.center, 0.3),
        ),
      ),
      child: ClipRRect(
        // make
        borderRadius: BorderRadius.circular(16.0),
        // sure we apply clip it properly
        child: Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$name, 23',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: Constants.EXTRA_BOLD,
                          fontWeight: FontWeight.w900),
                    ), Text(
                      'Tap to review 50+ notes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: Constants.SEMI_BOLD,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
