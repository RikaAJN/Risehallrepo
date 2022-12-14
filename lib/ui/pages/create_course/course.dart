import 'dart:developer';

import 'package:risehallrepo/ui/pages/home.dart';
import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';

import '../../../util/navigation/src/navigation.dart';

class CreatedCourse extends StatefulWidget {
  const CreatedCourse({Key? key}) : super(key: key);

  @override
  State<CreatedCourse> createState() => _CreatedCourseState();
}

String _courseCategory = "Science";
final items = ['Tech', 'Art', 'Philosophy', 'Science'];

class _CreatedCourseState extends State<CreatedCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YMargin(70),
            Text(
              'COURSE TITLE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            Text(
              'ENTER A COURSE TITLE',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
            YMargin(5),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Title',
              ),
              maxLines: 2,
            ),
            YMargin(20),
            Text(
              'COURSE DESCRIPTION',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Description',
              ),
              maxLines: 9,
            ),
            YMargin(20),
            Text(
              'COURSE CATEGORY',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            DropdownButton<String>(
              value: _courseCategory,
              onChanged: (String? newValue) => setState(
                  () => _courseCategory = newValue ?? "Select Category"),
              items: items
                  .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                  .toList(),

              // add extra sugar..
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 42,
              underline: SizedBox(),
            ),
            YMargin(20),
            Text(
              'COURSE TAGS',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Tags',
              ),
              maxLines: 2,
            ),
            YMargin(20),
            Text(
              'COURSE IMAGE',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Image',
              ),
              maxLines: 2,
            ),
            YMargin(20),
            Text(
              'COURSE PRICE',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Price',
              ),
              maxLines: 2,
            ),
            YMargin(20),
            Text(
              'COURSE DURATION',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Duration',
              ),
              maxLines: 2,
            ),
            YMargin(20),
            Text(
              'COURSE LANGUAGE',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            YMargin(10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Language',
              ),
              maxLines: 2,
            ),
            YMargin(20),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  navigateReplace(
                    context,
                    Home(),
                  );
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 16,
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
            YMargin(50),
          ],
        ),
      ),
    ));
  }
}
