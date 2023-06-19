import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smart_transfer/AppConstants/constants.dart';
import 'package:smart_transfer/Home/BottomNavigationBarScreens/recipients_screen.dart';

import '../MoreScreens/more_screen.dart';
import 'cards_screen.dart';
import 'dashboard_screen.dart';
import 'notifications_screen.dart';

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
      bottomNavigationBar: DotNavigationBar(
        marginR: const EdgeInsets.symmetric(horizontal: 15),
        dotIndicatorColor: Colors.transparent,
        paddingR: EdgeInsets.zero,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: darkBlueColor,
        onTap: (index) {
          tabIndex(index);
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeIn);
          setState(() {});
        },
        enablePaddingAnimation: false,
        currentIndex: _tabIndex,
        borderRadius: 10.0,
        enableFloatingNavBar: true,
        itemPadding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0, 1),
            blurRadius: 2,
          )
        ],
        items: [
          DotNavigationBarItem(
            icon: Column(
              children: [
                const Icon(
                  Icons.dashboard_outlined,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabIndex == 0 ? darkBlueColor : Colors.grey,
                  ),
                )
              ],
            ),
          ),
          DotNavigationBarItem(
            icon: Column(
              children: [
                const Icon(
                  Icons.group,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Recipient",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabIndex == 1 ? darkBlueColor : Colors.grey,
                  ),
                )
              ],
            ),
          ),
          DotNavigationBarItem(
            icon: Column(
              children: [
                const Icon(
                  Icons.add_card_outlined,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Cards",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabIndex == 2 ? darkBlueColor : Colors.grey,
                  ),
                )
              ],
            ),
          ),
          DotNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.notifications_active_outlined),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Notification",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabIndex == 3 ? darkBlueColor : Colors.grey,
                  ),
                )
              ],
            ),
          ),
          DotNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.add_circle_outline),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "More",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabIndex == 4 ? darkBlueColor : Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex(v);
        },
        children: const [
          DashboardScreen(),
          RecipientsScreen(),
          CardsScreen(),
          NotificationsScreen(),
          MoreScreen(),
        ],
      ),
    );
  }
}
