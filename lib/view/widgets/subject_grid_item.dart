
import 'package:flutter/material.dart';

class SubjectGridItems extends StatelessWidget {
  const SubjectGridItems({
    super.key, required this.subjectIcon, required this.subjecttitle,
  });
  final String subjectIcon;
  final String subjecttitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              subjectIcon),
        ),
        Text(subjecttitle)
      ],
    );
  }
}
