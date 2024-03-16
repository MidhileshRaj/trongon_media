import 'package:flutter/material.dart';

class CourseGridItem extends StatelessWidget {



  const CourseGridItem({super.key, required this.thumbnail, required this.couserTitle});
  final  String thumbnail;
  final String couserTitle;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child:  Image(image: NetworkImage(thumbnail),fit: BoxFit.fill,),
        ),
         Padding(
          padding: const EdgeInsets.all(1),
          child: Text(couserTitle),
        )
      ],
    );
  }
}
