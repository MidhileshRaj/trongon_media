
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learners_app/constants.dart';

class ExploreMoreButton extends StatelessWidget {
  const ExploreMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 190,
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 5,
            child: Container(
              height: 120,
              margin: const EdgeInsets.all(15),
              width: MediaQuery.sizeOf(context).width *.92,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  border:
                  Border.all(color: Colors.orange, width: 1)),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const SizedBox(width: 40,),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        width: 190,
                        child: Text(
                          "Monthly current Affairs",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),const Gap(5),  Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(25) ,
                        border: Border.all(width: 1)
                    ),
                    child: const Icon(Icons.arrow_forward,color: CupertinoColors.systemYellow,),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            left: 25,
            top: -1,
            child: Image(
              image: AssetImage(AppConstants.bookImage),
            ),
          ),
        ],
      ),
    );
  }
}
