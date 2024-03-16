import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:learners_app/controller/home_page_controller.dart';
import 'package:learners_app/model/home_page_model.dart';
import 'package:learners_app/view/widgets/course_grid_items.dart';
import 'package:provider/provider.dart';

import 'explore_more_button.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder<TotalResponse?>(
        future: Provider.of<HomePageController>(context).getHomeData(),
        builder:
            (BuildContext context, AsyncSnapshot<TotalResponse?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Text("Loading Error... ");
          }
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 200,
                    width: MediaQuery.sizeOf(context).width * .9,
                    child: CarouselSlider.builder(
                      initialPage: 1,
                        unlimitedMode: true,
                        slideBuilder: (index) {
                          return Container(
                            alignment: Alignment.center,
                            child: Image(
                              image: NetworkImage(
                                  snapshot.data!.data.adBanner[index].image),
                            ),
                          );
                        },
                        itemCount: snapshot.data!.data.adBanner.length),
                  ),
                  const Gap(5),
                  Container(
                    margin: const EdgeInsets.all(15),
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).height * .4,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return CourseGridItem(
                          thumbnail:
                              snapshot.data!.data.topCourses[index].thumbnail,
                          couserTitle:
                              snapshot.data!.data.topCourses[index].title,
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                  const ExploreMoreButton()
                ],
              ),
            );
          } else {
            return const Center(child: Text("Something went wrong."));
          }
        },


    );
  }
}
