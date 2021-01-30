import 'dart:ui';

import 'package:aisle/constants.dart';
import 'package:aisle/custom_navigationbar.dart';
import 'package:aisle/imageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Text(
                        'Notes',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: Constants.EXTRA_BOLD,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0, top: 4),
                      child: Text(
                        'Personal message to you',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
//                        letterSpacing: -0.5,
                            fontFamily: Constants.SEMI_BOLD,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: ImageView(Constants.PHOTO1,'Meena')
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 + 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0, top: 16),
                                child: Text(
                                  'Interested In You',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: Constants.EXTRA_BOLD,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, top: 4, bottom: 4),
                                child: Text(
                                  'Premium member can view all their likes at once',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontFamily: Constants.SEMI_BOLD,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0, left: 16),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0, 16, 20, 16),
                              child: Text(
                                'Upgrade',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: Constants.SEMI_BOLD,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Color(0xffffe500)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlurImageView(Constants.PHOTO2, 'Teena'),
                        BlurImageView(Constants.PHOTO3, 'Beena')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
