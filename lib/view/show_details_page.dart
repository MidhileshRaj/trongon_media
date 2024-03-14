import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:task_app/controllers/details_page_controller.dart';
import 'package:task_app/utils/theme/app_theme.dart';
import 'package:task_app/view/view_cast.dart';

class ShowDetailsPage extends StatelessWidget {
  const ShowDetailsPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<DetailsPageControler>(context, listen: false)
          .getDetails(id),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        }
        if (snapshot.hasError) {
          return const Scaffold(
              body: Center(child: Text("Error Fetching Data")));
        }
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text("${snapshot.data!["name"]}"),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        image: NetworkImage(
                            "${snapshot.data!["image"]["original"]}")),
                    const Gap(10),
                    Text(
                      "${snapshot.data!["type"]}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${snapshot.data!["language"]}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Viewcast(id: id),
                            ));
                      },
                      style: AppTheme.elevatedStyle,
                      child: const Text("Show Cast"),
                    ),
                    Gap(10),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .8,
                      child: Text(
                        " ${snapshot.data!["summary"]}",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index) {
                        var rating = snapshot.data!["rating"]["average"]! / 2;
                        if (index < rating.floor()) {
                          return Icon(Icons.star, color: Colors.amber);
                        } else if (index == rating.floor() &&
                            rating! % 1 != 0) {
                          return Icon(Icons.star_half, color: Colors.amber);
                        } else {
                          return Icon(Icons.star_border, color: Colors.grey);
                        }
                      }),
                    )
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Scaffold(
              body: Center(child: Text("Something went wrong")));
        }
      },
    );
  }
}
