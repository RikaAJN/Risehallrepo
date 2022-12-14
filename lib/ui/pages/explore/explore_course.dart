import 'package:risehallrepo/util/navigation/navigation.dart';
import 'package:flutter/material.dart';

import 'explore_course_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore',
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0.00,
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              InkWell(
                onTap: () {
                  navigate(
                    context,
                    ExploreDetails(),
                  );
                },
                child: ListTile(
                  leading: Image.asset(
                      'assets/images/algorithm-8507b849b8ee48e5887fda56916dd037.png'),
                  title: Text('Robotics'),
                  subtitle: Text(
                    'Fundamentals of RObotics',
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/brain-2062057__480.webp'),
                title: Text('Robotics'),
                subtitle: Text(
                  'Fundamentals of RObotics',
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/theoryEvolution.png'),
                title: Text('Robotics'),
                subtitle: Text(
                  'Fundamentals of RObotics',
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/theoryEvolution.png'),
                title: Text('Robotics'),
                subtitle: Text(
                  'Fundamentals of RObotics',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
