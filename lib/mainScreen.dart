import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:restuarant/view/banking/first.dart";
import "package:restuarant/view/restaurantScreen/orderHistory.dart";

import "res/colors.dart";
import "view/more.dart";

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  List<Widget> pages = [const OrderScreen(), const First11a(), const More()];
  @override
  Widget build(BuildContextcontext) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
        currentIndex: 1,
        fixedColor: Colors.black26,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        backgroundColor: AppColors.lightSurfaceOrg,
        items: const [
          BottomNavigationBarItem(
              label: '',
              activeIcon: Baseline(
                baselineType: TextBaseline.ideographic,
                baseline: 1,
                child: CircleAvatar(
                  backgroundColor: AppColors.buttonColor,
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              ),
              icon: Icon(Icons.home, color: Colors.black26)),
          BottomNavigationBarItem(
              label: '',
              activeIcon: Baseline(
                baselineType: TextBaseline.ideographic,
                baseline: 0,
                child: CircleAvatar(
                  backgroundColor: AppColors.buttonColor,
                  child: FaIcon(
                    FontAwesomeIcons.building,
                    color: Colors.white,
                  ),
                ),
              ),
              icon: FaIcon(FontAwesomeIcons.building, color: Colors.black26)),
          BottomNavigationBarItem(
              label: '',
              activeIcon: Baseline(
                baselineType: TextBaseline.ideographic,
                baseline: 0,
                child: CircleAvatar(
                  backgroundColor: AppColors.buttonColor,
                  child: FaIcon(
                    FontAwesomeIcons.outdent,
                    color: Colors.white,
                  ),
                ),
              ),
              icon: FaIcon(FontAwesomeIcons.outdent, color: Colors.black26)),
        ],
      ),
    );
  }
}
// AnimatedBottomNavigationBar(
// activeIndex: _currentIndex,
// gapWidth: 0,
// splashRadius: 25,
// inactiveColor: Colors.black26,
// activeColor: AppColors.buttonColor,
// leftCornerRadius: 40,
// icons: const [
// Icons.home_filled,
// Icons.dashboard_rounded,
// Icons.horizontal_split
// ],
// onTap: (index) {
// _currentIndex = index;
// setState(() {});
// },
// ),
