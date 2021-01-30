import 'package:aisle/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomNavigationBar extends StatelessWidget {
//  CustomNavigationBar({this.currentIndex = 0});

//  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black38,
      currentIndex: 0,
      // this will be set when a new tab is tapped
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(Constants.DISCOVER_ICONS)),
          label: Constants.DISCOVER_ICONS_NAME,
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 24,
            width: 30,
            child: Stack(
              children: [
                ImageIcon(AssetImage(Constants.NOTES_ICON)),
                Positioned(
                  // draw a red marble
                  top: -1.4,
                  right: -1.4,
                  child: new Stack(
                    children: <Widget>[
                      new Icon(Icons.brightness_1,
                          size: 18.0, color: Colors.deepPurple),
                      new Positioned(
                        top: 2.0,
                        right: 5.0,
                        child: new Text('9',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          label: Constants.NOTES_ICON_NAME,
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 24,
            width: 30,
            child: Stack(
              children: [
                ImageIcon(AssetImage(Constants.MATCHES_ICON)),
                Positioned(
                  // draw a red marble
                  top: -0.4,
                  right: -0.4,
                  child: new Stack(
                    children: <Widget>[
                      new Container(
                        height: 12.0,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          color: Colors.deepPurple,
                        ),
                      ),
                      new Positioned(
                        top: 0.5,
                        right: 1.5,
                        child: new Text('50+',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          label: Constants.MATCHES_ICON_NAME,
//          title: new Text(
//            Constants.MATCHES_ICON_NAME,
//            style: TextStyle(color: Colors.black),
//          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(Constants.PROFILES_ICON)),
          label: Constants.PROFILES_ICON_NAME,
        ),
      ],
    );
//    Padding(
//      padding: const EdgeInsets.all(16.0),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        children: [
//          CustomIcon(
//              Constants.DISCOVER_ICONS, Constants.DISCOVER_ICONS_NAME, 0, 0),
//          CustomIcon(Constants.NOTES_ICON, Constants.NOTES_ICON_NAME, 0, 1),
//          CustomIcon(Constants.MATCHES_ICON, Constants.MATCHES_ICON_NAME, 0, 2),
//          CustomIcon(
//              Constants.PROFILES_ICON, Constants.PROFILES_ICON_NAME, 0, 3),
//        ],
//      ),
//    );
  }
}

//BottomNavigationBar(
//      selectedItemColor: Colors.black,
//      unselectedItemColor: Colors.black38,
//      currentIndex: 0,
//      // this will be set when a new tab is tapped
//      items: <BottomNavigationBarItem>[
//        BottomNavigationBarItem(
//          icon: ImageIcon(AssetImage(Constants.DISCOVER_ICONS)),
//          label: Constants.DISCOVER_ICONS_NAME,
//        ),
//        BottomNavigationBarItem(
//          icon: ImageIcon(AssetImage(Constants.NOTES_ICON)),
//          label: Constants.NOTES_ICON_NAME,
//        ),
//        BottomNavigationBarItem(
//          icon: ImageIcon(AssetImage(Constants.MATCHES_ICON)),
//          label: Constants.MATCHES_ICON_NAME,
////          title: new Text(
////            Constants.MATCHES_ICON_NAME,
////            style: TextStyle(color: Colors.black),
////          ),
//        ),
//        BottomNavigationBarItem(
//          icon: ImageIcon(AssetImage(Constants.PROFILES_ICON)),
//          label: Constants.PROFILES_ICON_NAME,
//        ),
//      ],
//    );
class CustomIcon extends StatelessWidget {
  CustomIcon(this.iconName, this.title, this.currentIndex, this.position);

  final String iconName;
  final String title;
  final int currentIndex;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(iconName),
            color: currentIndex == position ? Colors.black : Colors.black54,
          ),
          Text(
            title,
            style: TextStyle(
              color: currentIndex == position ? Colors.black : Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
