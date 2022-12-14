import 'package:flutter/material.dart';
import 'package:risehallrepo/util/navigation/navigation.dart';

import '../subscription/subscription.dart';
import 'mentor_class_list.dart';

class EnrolClass extends StatelessWidget {
  const EnrolClass({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Enroll in a mentors class',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 0.00,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 10,
              ),
              MentorTile(
                "Paityn Donin",
                "Backend Development",
                "assets/images/Ellipse1.png",
              ),
              SizedBox(
                height: 7,
              ),
              MentorTile(
                "Kaylynn George",
                "Data Science",
                "assets/images/Ellipse2.png",
              ),
              SizedBox(
                height: 7,
              ),
              MentorTile(
                "Jaydon Madsen",
                "Front-end Development",
                "assets/images/Ellipse3.png",
              ),
              SizedBox(
                height: 7,
              ),
              MentorTile(
                "Wilson Botosh",
                "Data Science",
                "assets/images/Ellipse7.png",
              ),
              SizedBox(
                height: 7,
              ),
            ],
          ),
        ));
  }
}

class MentorTile extends StatefulWidget {
  String? name;
  String? title;
  String? image;
  MentorTile(this.name, this.title, this.image, {Key? key}) : super(key: key);

  @override
  State<MentorTile> createState() => _MentorTileState();
}

class _MentorTileState extends State<MentorTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset(
          widget.image!,
          fit: BoxFit.scaleDown,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text(
        widget.name!,
        style: TextStyle(
          color: Color.fromARGB(255, 7, 36, 59),
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        widget.title!,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
      tileColor: Colors.grey.withOpacity(0.2),
      trailing: InkWell(
        onTap: () {
          navigate(
            context,
            ChooseSubscription(),
            // clasList(),
          );
        },
        child: Container(
          child: Text(
            'Enroll',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(15),
        ),
      ),
    );
  }
}
