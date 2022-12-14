import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../enum/button_type.dart';
import '../../../util/button.dart';
import '../navmenu/menu_dashboard_layout.dart';

class ContinueAs extends StatelessWidget {
  const ContinueAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.insetsSymetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              YMargin(90),
              Text(
                'Welcome to',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset('assets/images/Risehall logo 5 PNG.png'),
              YMargin(20),
              Text(
                'Continue as',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              YMargin(170),
              TVButton(
                title: 'Mentor',
                buttonType: ButtonType.primary,
                // loading: model.isBusy,
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('isMentor', true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuDashboardLayout(),
                    ),
                  );
                },
              ),
              YMargin(20),
              Text(
                'OR',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              YMargin(20),
              TVButton(
                title: 'Mentee',
                buttonType: ButtonType.secondary,
                // loading: model.isBusy,
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('isMentor', false);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuDashboardLayout(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
