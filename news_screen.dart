import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snackbar_dailogs_bottom_sheets/news_data.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NewsData>().fetchData;
    return Container(
        color: Colors.black,
        child: RefreshIndicator(
          onRefresh: () async {
            await context.read<NewsData>().fetchData;
          },
          child: Center(
            child: Consumer<NewsData>(
              builder: (context, value, child) {
                return value.map.length == 0 && !value.error
                    ? CircularProgressIndicator()
                    : value.error
                        ? Text(
                            "Oops! Something went wrong ${value.errorMessage}")
                        : ListView.builder(
                            itemCount: value.map['results'].length,
                            itemBuilder: (context, index) {
                              return NewsCard(
                                map: value.map['results'][index],
                              );
                            },
                          );
              },
            ),
          ),
        ));
    ;
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.map});
  final Map<dynamic, dynamic> map;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.black,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${map['title'] ?? ''}',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.network('${map['image_url'] ?? 'https://us.123rf.com/450wm/mathier/mathier1905/mathier190500002/134557216-no-thumbnail-image-placeholder-for-forums-blogs-and-websites.jpg?ver=6'}'),
              SizedBox(
                height: 10,
              ),
              Text(
                '${map['description'] ?? ''}',
                style:
                    TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${map['content'] ?? ''}',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
