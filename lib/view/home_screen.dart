import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/controllers/home_screen_controller.dart';
import 'package:task_app/utils/widgets/custom_griditem.dart';
import 'package:task_app/view/show_details_page.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shows"),
      ),
      body: FutureBuilder(
        future:
            Provider.of<HomeScreenController>(context, listen: false).getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Error Fetching Data"));
          }
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowDetailsPage(
                              id: snapshot.data![index]["id"].toString(),
                            ),
                          ));
                    },
                    child: CustomGridItem(
                      rating: snapshot.data![index]["rating"]["average"],
                      imageLink: snapshot.data![index]["image"]["medium"],
                      name: snapshot.data![index]["name"],
                      genre: snapshot.data![index]["genres"],
                    ));
              },
            );
          } else {
            return const Center(child: Text("Something went wrong"));
          }
        },
      ),
    );
  }
}
