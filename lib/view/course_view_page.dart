import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learners_app/constants.dart';
import 'package:learners_app/controller/course_page_controller.dart';
import 'package:learners_app/model/course_page_model.dart';
import 'package:provider/provider.dart';

import 'widgets/subject_grid_item.dart';

class CourseViewPage extends StatefulWidget {
  const CourseViewPage({super.key});

  @override
  State<CourseViewPage> createState() => _CourseViewPageState();
}

class _CourseViewPageState extends State<CourseViewPage> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TotalResponsePage2?>(
      future: Provider.of<CoursePageController>(context,listen: false).getData(),
      builder:
          (BuildContext context, AsyncSnapshot<TotalResponsePage2?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Text("Some Error occured");
        }
        if (snapshot.hasData) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    alignment: Alignment.center,
                    height: 220,
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.sizeOf(context).width * .9,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "Good morning",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  snapshot.data!.data.userdata.name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Gap(10),
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(20),
                                width: MediaQuery.sizeOf(context).width * .3,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                        width: 180,
                                        child: Text(snapshot
                                            .data!.data.userdata.courseName)),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 80,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Text(
                                        "Change",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: -5,
                          child: CircleAvatar(
                            backgroundImage:
                                const AssetImage(AppConstants.profileIconImage),
                            radius: 35,
                            backgroundColor: Colors.blue[100],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.all(15),
                    width: MediaQuery.sizeOf(context).height * .8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.cyan[100]),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage(AppConstants.iconLive)),
                        Image(image: AssetImage(AppConstants.iconPractive)),
                        Image(image: AssetImage(AppConstants.iconExam)),
                      ],
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .4,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return  SubjectGridItems(subjectIcon: snapshot.data!.data.subjects[index].icon, subjecttitle: snapshot.data!.data.subjects[index].title,);
                      },
                      itemCount: snapshot.data!.data.subjects.length,
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return const Text("Something went wrong");
        }
      },
    );
  }
}
