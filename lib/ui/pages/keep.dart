// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:how_bodi_mobile/views/wallet/wallet_screen.dart';
// import '../../helpers/strings.dart';
// import '../../service/local_notifications.dart';
// import '../../service/socket/chat_msg_service.dart';
// import '../../src/colors.dart';
// import '../account/profile.dart';
// import '../chat/conversation_screen.dart';
// import '../notification/notification_screen.dart';
// import 'home.dart';
// import 'package:how_bodi_mobile/main.dart';

// import 'staff_home_screen.dart' as staff;

// class MainApp extends StatefulWidget {
//   const MainApp({Key? key}) : super(key: key);

//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// String userId = box.get('userId');

// class _MainAppState extends State<MainApp> {
//   late ValueNotifier<int> _currentIndexNotifier;
//   String getUser = box.get('userType') ?? '';
//   String yourToken = box.get('token').toString();

//   @override
//   void initState() {
//     // getUserType
//     // log('${yourToken} --------------------------------------------------');
//     log("${globalUserid} from main");
//     //  checkToken();
//     log(getUser);

//     _currentIndexNotifier = ValueNotifier(0);
//     SocketService().createSocketConnection();

//     LocalNotificationService().initialize();

//     SocketService().socketNotification();
//     SocketService().socketBooking(context);
//     SocketService().listenToEndCall(context);
//     super.initState();
//   }

//   bool goback = false;

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<int>(
//       valueListenable: _currentIndexNotifier,
//       builder: (context, value, child) {
//         SocketService().socketBooking(context);
//         return (getUser == 'personal'
//             ? Scaffold(
//                 bottomNavigationBar: BottomNavigationBar(
//                   elevation: 2,
//                   type: BottomNavigationBarType.fixed,
//                   currentIndex: value,
//                   backgroundColor: const Color(0xFFF5EFFF),
//                   onTap: (selectedItem) {
//                     _currentIndexNotifier.value = selectedItem;
//                   },
//                   selectedLabelStyle: const TextStyle(
//                     fontSize: 10,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   unselectedLabelStyle: const TextStyle(
//                     fontSize: 10,
//                     fontWeight: FontWeight.w400,
//                     color: kColorBlack,
//                     fontFamily: TRENDA_LIGHT,
//                   ),
//                   selectedItemColor: kColorMainPrimary,
//                   unselectedItemColor: const Color(0xFF474747),
//                   items: <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         HOME_SVG,
//                         //  height: context.scaleY(24),
//                         color: value == 0 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'Home',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         CHAT_SVG,
//                         //  height: context.scaleY(24),
//                         color: value == 1 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'Chat',
//                     ),

//                     //WalletScreen
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         WALLET_SVG,
//                         //  height: context.scaleY(24),
//                         color: value == 2 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'Wallet',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         NOTIFICATION_SVG,
//                         // height: context.scaleY(24),
//                         color: value == 3 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'Notification',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         PROFILE_SVG,
//                         //height: context.scaleY(24),
//                         color: value == 4 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'profile',
//                     ),
//                   ],
//                 ),
//                 body: value == 0
//                     ? const PersonalHomeScreen()
//                     : value == 1
//                         ? ChatScreen()
//                         : value == 2

//                             //WalletScreen
//                             ? const WalletScreen()
//                             : value == 3
//                                 ? NotificationScreen()
//                                 : value == 4
//                                     ? const ProfileScreen()
//                                     : Container(),
//               )
//             : Scaffold(
//                 // floatingActionButton: FloatingActionButton(
//                 //   backgroundColor: kColorMainPrimary,
//                 //   onPressed: () {
//                 //     Navigator.push(
//                 //       context,
//                 //       MaterialPageRoute(
//                 //         builder: (context) => WatchVideo(),
//                 //       ),
//                 //     );
//                 //   },
//                 //   child: Icon(Icons.personal_video_sharp),
//                 // ),
//                 bottomNavigationBar: BottomNavigationBar(
//                   elevation: 2,
//                   type: BottomNavigationBarType.fixed,
//                   currentIndex: value,
//                   backgroundColor: const Color(0xFFF5EFFF),
//                   onTap: (selectedItem) {
//                     _currentIndexNotifier.value = selectedItem;
//                   },
//                   selectedLabelStyle: const TextStyle(
//                     fontSize: 10,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   unselectedLabelStyle: const TextStyle(
//                     fontSize: 10,
//                     fontWeight: FontWeight.w400,
//                     color: kColorBlack,
//                     fontFamily: TRENDA_LIGHT,
//                   ),
//                   selectedItemColor: kColorMainPrimary,
//                   unselectedItemColor: const Color(0xFF474747),
//                   items: <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         HOME_SVG,
//                         //  height: context.scaleY(24),
//                         color: value == 0 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'Home',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         CHAT_SVG,
//                         //  height: context.scaleY(24),
//                         color: value == 1 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'Chat',
//                     ),

//                     // //WalletScreen
//                     // BottomNavigationBarItem(
//                     //   icon: SvgPicture.asset(
//                     //     WALLET_SVG,
//                     //     //  height: context.scaleY(24),
//                     //     color: value == 2 ? kColorMainPrimary : kColorBlack,
//                     //   ),
//                     //   label: 'Wallet',
//                     // ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         NOTIFICATION_SVG,
//                         // height: context.scaleY(24),
//                         color: value == 2 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'Notification',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         PROFILE_SVG,
//                         //height: context.scaleY(24),
//                         color: value == 3 ? kColorMainPrimary : kColorBlack,
//                       ),
//                       label: 'profile',
//                     ),
//                   ],
//                 ),
//                 body: value == 0
//                     ? const staff.StaffHomeScreen()
//                     : value == 1
//                         ? ChatScreen()
//                         : value == 2

//                             // //WalletScreen
//                             // ? const WalletScreen()
//                             // : value == 3
//                             ? NotificationScreen()
//                             : value == 3
//                                 ? const ProfileScreen()
//                                 : Container(),
//               ));
//       },
//     );
//   }
// }
