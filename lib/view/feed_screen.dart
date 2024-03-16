import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:learners_app/controller/feeds_page_controller.dart';
import 'package:learners_app/model/feeds_page_model.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TotalResponse4?>(
      future: Provider.of<FeedPageController>(context, listen: false)
          .getFeedsData(),
      builder: (BuildContext context, AsyncSnapshot<TotalResponse4?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Text("Some Error Occured while geting api");
        }
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.data.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * .25,
                    width: MediaQuery.sizeOf(context).width * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:  DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                snapshot.data!.data[index].file.toString()))),
                  ),
                   ListTile(
                    leading: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            CupertinoIcons.heart,
                            color: Colors.red,
                          ),
                          Text(" ${snapshot.data!.data[index].likeCount} Likes")
                        ],
                      ),
                    ),
                    trailing: const SizedBox(
                      width: 50,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.app,
                            color: Colors.green,
                          ),
                          Icon(
                            CupertinoIcons.bookmark,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width*.65,
                          child: Text(
                            snapshot.data!.data[index].title.toString(),
                            style: const TextStyle(fontSize: 18, color: Colors.blue),
                          ),
                        ),
                        Text(
                          snapshot.data!.data[index].date.toString(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .9,
                    child: Text(
                        parse(parse(snapshot.data!.data[index].content).body!.text).documentElement!.text),
                  )
                ],
              );
            },
          );
        } else {
          return const Text("Something went wrong");
        }
      },
    );
  }
}
