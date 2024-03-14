import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomCastDetails extends StatelessWidget {
  const CustomCastDetails({
    super.key,
    required this.image,
    required this.name,
    required this.charactor,
    required this.gender,
    required this.dob,
    required this.url,
    // required this.characterImage1,
    // required this.characterImage2,
  });

  final String image;
  final String name;
  final String charactor;
  final String? gender;
  final String? dob;
  final String? url;
  // final String? characterImage1;
  // final String? characterImage2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.yellowAccent),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image(
            height: 150,
            width: 120,
            image: NetworkImage(image),
          ),
          const Gap(2),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 24),
              ),
              Text("As   $charactor"),
              Text("Born on  $dob"),
              Text("Gender :- $gender"),
              SizedBox(
                  width: 280,
                  child: Text(
                    url!,
                  )),
              SizedBox(
                width: 200,
                height: 100,
                // child: ListView(
                //   shrinkWrap: true,
                //   padding: const EdgeInsets.all(8),
                //   scrollDirection: Axis.horizontal,
                //   children: [ Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: characterImage1== null?const SizedBox():Image(
                //       height: 50,
                //       width: 50,
                //       image: NetworkImage(
                //           characterImage1!),
                //     ),
                //   ), Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: characterImage2== null?const SizedBox(): Image(
                //       height: 50,
                //       width: 50,
                //       image: NetworkImage(
                //           characterImage2!),
                //     ),
                //   )
                //   ]
                //   ,
                // ),
              )
            ],
          )
        ],
      ),
    );
  }
}
