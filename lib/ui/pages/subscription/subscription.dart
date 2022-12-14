// ignore_for_file: unnecessary_const

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:risehallrepo/util/navigation/navigation.dart';
import 'package:risehallrepo/util/scaler/scaler.dart';

import '../../../util/scaler/src/margin.dart';
import '../live_session/live_session.dart';

class ChooseSubscription extends StatefulWidget {
  const ChooseSubscription({Key? key}) : super(key: key);

  @override
  State<ChooseSubscription> createState() => _ChooseSubscriptionState();
}

class _ChooseSubscriptionState extends State<ChooseSubscription> {
  //var value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFBFB),
        centerTitle: true,
        elevation: 0.00,
        iconTheme: const IconThemeData(
          color: Color(0xFF264653),
        ),
        title: const Text(
          'Choose Subscription',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            //fontFamily: TRENDA_BOLD,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const [
          YMargin(11),
          Center(
            child: Text(
              'Subscription Type',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 18,
                //fontFamily: TRENDA_LIGHT,
              ),
            ),
          ),
          YMargin(30),
          SUbscriptionPlan(),
        ],
      ),
    );
  }
}

class SUbscriptionPlan extends StatefulWidget {
  const SUbscriptionPlan({
    Key? key,
  }) : super(key: key);

  @override
  State<SUbscriptionPlan> createState() => _SUbscriptionPlanState();
}

class _SUbscriptionPlanState extends State<SUbscriptionPlan> {
  //String? selectedRole;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // _modalBottomSheetMenu(context);
          navigate(
            context,
            LiveSessionVideo(
              onMenuTap: () {},
            ),
          );
        },
        child: ListView(
          children: [
            //Advance
            Container(
              //height: 178,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
              padding: context.insetsOnly(
                left: 68,
                right: 59,
                top: 23,
                bottom: 11.18,
              ),
              margin: context.insetsSymetric(
                horizontal: 37,
                vertical: 17,
              ),

              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    padding: context.insetsSymetric(
                      horizontal: 35,
                      vertical: 12,
                    ),
                    child: Text(
                      'Advanced level',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        //fontFamily: TRENDA_SEMI_BOLD,
                      ),
                    ),
                  ),
                  const YMargin(19),
                  Text(
                    '6months',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      // fontFamily: TRENDA_BOLD,
                    ),
                  ),
                  const YMargin(8),
                  Text(
                    "1000 USD",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      // fontFamily: TRENDA_SEMI_BOLD,
                    ),
                  ),
                  const YMargin(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),

            //intermediate
            Container(
              //height: 178,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
              padding: context.insetsOnly(
                left: 68,
                right: 59,
                top: 23,
                bottom: 11.18,
              ),
              margin: context.insetsSymetric(
                horizontal: 37,
                vertical: 17,
              ),

              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    padding: context.insetsSymetric(
                      horizontal: 35,
                      vertical: 12,
                    ),
                    child: Text(
                      'Intermediate level',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        //fontFamily: TRENDA_SEMI_BOLD,
                      ),
                    ),
                  ),
                  const YMargin(19),
                  Text(
                    '6months',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      // fontFamily: TRENDA_BOLD,
                    ),
                  ),
                  const YMargin(8),
                  Text(
                    "650 USD",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      // fontFamily: TRENDA_SEMI_BOLD,
                    ),
                  ),
                  const YMargin(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Beginner
            Container(
              //height: 178,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
              padding: context.insetsOnly(
                left: 68,
                right: 59,
                top: 23,
                bottom: 11.18,
              ),
              margin: context.insetsSymetric(
                horizontal: 37,
                vertical: 17,
              ),

              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    padding: context.insetsSymetric(
                      horizontal: 35,
                      vertical: 12,
                    ),
                    child: Text(
                      'Beginner level',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        //fontFamily: TRENDA_SEMI_BOLD,
                      ),
                    ),
                  ),
                  const YMargin(19),
                  Text(
                    '6months',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      // fontFamily: TRENDA_BOLD,
                    ),
                  ),
                  const YMargin(8),
                  Text(
                    "300 USD",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      // fontFamily: TRENDA_SEMI_BOLD,
                    ),
                  ),
                  const YMargin(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
