import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smart_transfer/AppConstants/constants.dart';

import 'more_screen.dart';

class HomeBottomNavigationBarScreen extends StatefulWidget {
  const HomeBottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavigationBarScreen> createState() =>
      _HomeBottomNavigationBarScreenState();
}

class _HomeBottomNavigationBarScreenState
    extends State<HomeBottomNavigationBarScreen>
    with SingleTickerProviderStateMixin {
  var _tabIndex = 0;
  tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingNavbar(
        width: MediaQuery.of(context).size.width * 0.9,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedBackgroundColor: Colors.white,
        selectedItemColor: darkBlueColor,
        onTap: (index) {
          tabIndex(index);
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeIn);
          setState(() {});
        },
        currentIndex: _tabIndex,
        items: [
          FloatingNavbarItem(
            icon: Icons.dashboard_outlined,
            title: 'Dashboard',
          ),
          FloatingNavbarItem(
            icon: Icons.notifications_active_outlined,
            title: 'Notifications',
          ),
          FloatingNavbarItem(
            icon: Icons.add_circle_outline,
            title: 'More',
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex(v);
        },
        children: const [
          // DashboardScreen(),
          // EditMealsScreen(),
          // FavouriteRecipeScreen(),
          // NotificationsScreen(),
          MoreScreen(),
        ],
      ),
    );
  }
}
