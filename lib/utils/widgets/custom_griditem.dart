import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomGridItem extends StatelessWidget {
   const CustomGridItem({super.key, required this.rating, required this.imageLink, required this.name, required this.genre});

  final num? rating ;
  final String imageLink;
  final String name;
  final List genre;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image(
              height: 100,
              width: 100,
              fit: BoxFit.fill,
              image: NetworkImage(
                  "$imageLink")),

          Text(name),
          SizedBox(
            height: 20,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              itemCount: genre.length,
              itemBuilder: (context, index) {
                return Center(child: Text("${genre[index]},"));
              },
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          ),
          const Gap(10),
          rating==null?const SizedBox():
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {

              if (index < rating!/2!.floor()) {
                return const Icon(Icons.star, color: Colors.amber);
              } else if (index == rating!/2!.floor() && rating!/2! % 1 != 0) {
                return const Icon(Icons.star_half, color: Colors.amber);
              } else {
                return const Icon(Icons.star_border, color: Colors.grey);
              }
            }),
          )
        ],
      ),
    );
  }
}
