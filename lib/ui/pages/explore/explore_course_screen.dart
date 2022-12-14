import 'package:flutter/material.dart';

class ExploreDetails extends StatelessWidget {
  const ExploreDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageTop(),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Icon(
                  Icons.book,
                ),
                title: Text(
                  'Chapter 1 : Introduction to  Robotics',
                ),
                subtitle: Text(
                    'Introduction to how robotics works and its importance'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ImageTop extends StatelessWidget {
  const ImageTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/algorithm-8507b849b8ee48e5887fda56916dd037.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            10,
          ),
          bottomRight: Radius.circular(10),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      child: Column(),
    );
  }
}
