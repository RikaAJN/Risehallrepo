import 'package:risehallrepo/util/navigation/navigation.dart';
import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'course.dart';

class CreateCourse extends StatelessWidget {
  const CreateCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/undraw_learning_sketching_nd4f.svg',
              fit: BoxFit.scaleDown,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            Text(
              'Create new course',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            Text(
              'Create new course by adding videos, slides, pdfs,work doucment, quizzes, and more.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            YMargin(50),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  navigate(
                    context,
                    CreatedCourse(),
                  );
                },
                child: Text(
                  'Create Course',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF00A0DC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
