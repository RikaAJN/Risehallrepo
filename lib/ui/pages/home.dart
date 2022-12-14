import 'dart:ui';
import 'package:risehallrepo/ui/widgets/overlay.dart';
import 'package:risehallrepo/theme/box_icons_icons.dart';
import 'package:risehallrepo/theme/config.dart';
import 'package:risehallrepo/ui/pages/live_session/live_session.dart';
import 'package:risehallrepo/ui/pages/videos.dart';
import 'package:risehallrepo/ui/widgets/sectionHeader.dart';
import 'package:risehallrepo/ui/widgets/topBar.dart';
import 'package:risehallrepo/ui/widgets/videoCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import 'create_course/create_course.dart';
import 'explore/explore_course.dart';
import 'join_class/interactive_class.dart';

class Home extends StatefulWidget {
  final onMenuTap;
  Home({this.onMenuTap});
  @override
  _HomeState createState() => _HomeState();
}

late final bool? shouldContinue;

class _HomeState extends State<Home> {
  int tabNo = 0;
  late bool overlayVisible;
  CupertinoTabController? controller;
  @override
  void initState() {
    overlayVisible = false;
    shouldContinue = prefs.getBool('isMentor');
    controller = CupertinoTabController(initialIndex: 0);

    //checkContinueStatus();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
      body: shouldContinue == true
          ? Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CupertinoTabScaffold(
                  backgroundColor: Colors().secondColor(1),
                  controller: controller,
                  tabBar: CupertinoTabBar(
                    onTap: (value) {
                      setState(() {
                        tabNo = value;
                      });
                    },
                    activeColor: material.Colors.lightBlue,
                    inactiveColor: Color(0xFFADADAD),
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bx_home_circle),
                        label: tabNo == 0 ? "Home" : '',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bx_video),
                        label: tabNo == 1 ? "Live" : "",
                      ),
                      BottomNavigationBarItem(icon: Container()),
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bxs_videos),
                        label: tabNo == 3 ? "Videos" : "",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bx_stats),
                        label: tabNo == 4 ? "Explore" : "",
                      ),
                    ],
                  ),
                  tabBuilder: (context, index) => (index == 0)
                      ? HomePage(
                          onMenuTap: widget.onMenuTap,
                        )
                      : (index == 1)
                          ? LiveSessionVideo(
                              onMenuTap: widget.onMenuTap,
                            )
                          : (index == 2)
                              ? Container(
                                  color: CupertinoColors.activeOrange,
                                )
                              : (index == 3)
                                  ? VideosPage(
                                      onMenuTap: widget.onMenuTap,
                                    )
                                  : ExploreScreen(),
                ),
                Positioned(
                    bottom: 0,
                    child: GestureDetector(
                      child: SizedBox(
                        height: 60,
                        width: 80,
                        child: Text(""),
                      ),
                      onTap: () {},
                    )),
                overlayVisible ? CreateCourse() : Container(),
                Positioned(
                  bottom: 20,
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFABDCFF),
                              Color(0xFF0396FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 25,
                                color: Color(0xFF03A9F4).withOpacity(0.4),
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.circular(500)),
                      child: material.FloatingActionButton(
                        elevation: 0,
                        highlightElevation: 0,
                        backgroundColor: material.Colors.transparent,
                        child: overlayVisible
                            ? Icon(material.Icons.close)
                            : Icon(BoxIcons.bx_pencil),
                        onPressed: () {
                          setState(
                            () {
                              overlayVisible = !overlayVisible;
                            },
                          );
                        },
                      )),
                ),
              ],
            )
          : Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CupertinoTabScaffold(
                  backgroundColor: Colors().secondColor(1),
                  controller: controller,
                  tabBar: CupertinoTabBar(
                    onTap: (value) {
                      setState(() {
                        tabNo = value;
                      });
                    },
                    activeColor: material.Colors.lightBlue,
                    inactiveColor: Color(0xFFADADAD),
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bx_home_circle),
                        label: tabNo == 0 ? "Home" : '',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bx_video),
                        label: tabNo == 1 ? "Live" : "",
                      ),
                      BottomNavigationBarItem(icon: Container()),
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bxs_videos),
                        label: tabNo == 3 ? "Videos" : "",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(BoxIcons.bx_stats),
                        label: tabNo == 4 ? "Explore" : "",
                      ),
                    ],
                  ),
                  tabBuilder: (context, index) => (index == 0)
                      ? HomePage(
                          onMenuTap: widget.onMenuTap,
                        )
                      : (index == 1)
                          ? LiveSessionVideo(
                              onMenuTap: widget.onMenuTap,
                            )
                          : (index == 2)
                              ? Container(
                                  color: CupertinoColors.activeOrange,
                                )
                              : (index == 3)
                                  ? VideosPage(
                                      onMenuTap: widget.onMenuTap,
                                    )
                                  : ExploreScreen(),
                ),
                Positioned( 
                    bottom: 0,
                    child: GestureDetector(
                      child: SizedBox(
                        height: 60,
                        width: 80,
                        child: Text(""),
                      ),
                      onTap: () {},
                    )),
                overlayVisible ? EnrolClass() : Container(),
                Positioned(
                  bottom: 20,
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFABDCFF),
                              Color(0xFF0396FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 25,
                                color: Color(0xFF03A9F4).withOpacity(0.4),
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.circular(500)),
                      child: material.FloatingActionButton(
                        elevation: 0,
                        highlightElevation: 0,
                        backgroundColor: material.Colors.transparent,
                        child: overlayVisible
                            ? Icon(material.Icons.close)
                            : Text('Enroll'),
                        onPressed: () {
                          setState(
                            () {
                              overlayVisible = !overlayVisible;
                            },
                          );
                        },
                      )),
                ),
              ],
            ),
    );
  }
}

// void checkContinueStatus({bool? checkStatus}) async {
//   final prefs = await SharedPreferences.getInstance();
//   shouldContinue = prefs.getBool('isMentor');

// }

class HomePage extends StatelessWidget {
  final onMenuTap;
  HomePage({
    Key? key,
    required this.onMenuTap,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFixedExtentList(
                    delegate: SliverChildListDelegate.fixed([Container()]),
                    itemExtent: MediaQuery.of(context).size.height * 0.32),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Recommended Classes',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return VideoCard(long: false);
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Recorded sessions',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return VideoCard(long: false);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: TopBar(
              controller: controller,
              expanded: true,
              onMenuTap: onMenuTap,
            ),
          )
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:provider/provider.dart';

// import '../../provider/history_provider.dart';
// import '../../provider/profile_provider.dart';
// import '../../src/colors.dart';
// import '../history/history.dart';
// import '../notification/notifications.dart';
// import '../profile/profile_screen.dart';
// import 'home_screen.dart';

// class MainApp extends StatefulWidget {
//   const MainApp({Key? key}) : super(key: key);

//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// class _MainAppState extends State<MainApp> {
//   @override
//   void initState() {
//     Provider.of<ProfileProvider>(context, listen: false).getProfile();
//     Provider.of<HistoryProvider>(context, listen: false).getHistory();
//     super.initState();
//   }

//   int _selectedScreens = 0;

//   void _onScreentapped(int index) {
//     setState(() {
//       _selectedScreens = index;
//     });
//   }

//   final List<BottomNavigationBarItem> _items = [
//     BottomNavigationBarItem(
//       activeIcon: SvgPicture.asset(
//         'assets/icons/bottom_nav/home.svg',
//         color: kColorMainPrimary,
//       ),
//       icon: SvgPicture.asset(
//         'assets/icons/bottom_nav/home.svg',
//         color: const Color(0xFF707070),
//       ),
//       label: 'Home',
//     ),
//     BottomNavigationBarItem(
//       activeIcon: SvgPicture.asset(
//         'assets/icons/bottom_nav/inbox.svg',
//         color: kColorMainPrimary,
//       ),
//       icon: SvgPicture.asset(
//         'assets/icons/bottom_nav/inbox.svg',
//         color: const Color(0xFF707070),
//       ),
//       label: 'History',
//     ),

//     //WalletScreen
//     BottomNavigationBarItem(
//       activeIcon: SvgPicture.asset(
//         'assets/icons/bottom_nav/notification.svg',
//         color: kColorMainPrimary,
//       ),
//       icon: SvgPicture.asset(
//         'assets/icons/bottom_nav/notification.svg',
//         color: const Color(0xFF707070),
//       ),
//       label: 'Notification',
//     ),
//     BottomNavigationBarItem(
//       activeIcon: SvgPicture.asset(
//         'assets/icons/bottom_nav/profile.svg',
//         color: kColorMainPrimary,
//       ),
//       icon: SvgPicture.asset(
//         'assets/icons/bottom_nav/profile.svg',
//         color: const Color(0xFF707070),
//       ),
//       label: 'Profile',
//     ),
//   ];

//   List<Widget> pages = [
//     const HomeScreen(),
//     const HistoryScreen(),
//     const NotificationScreen(),
//     const ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 2,
//         currentIndex: _selectedScreens,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: kColorWhite,
//         onTap: _onScreentapped,
//         selectedLabelStyle: const TextStyle(
//           fontSize: 10,
//           fontWeight: FontWeight.w600,
//         ),
//         unselectedLabelStyle: const TextStyle(
//           fontSize: 10,
//           fontWeight: FontWeight.w500,
//           color: Color(0xFF707070),
//         ),
//         selectedItemColor: kColorMainPrimary,
//         unselectedItemColor: const Color(0xFF474747),
//         items: _items,
//       ),
//       body: pages[_selectedScreens],
//     );
//   }
// }
