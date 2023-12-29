import 'package:flutter/material.dart';
import 'package:news_tdd/features/news/domain/entities/news.dart';

import '../pages/news_detail_page.dart';

class NewsItemWidget extends StatelessWidget {
  final NewsEntity news;

  const NewsItemWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(news: news),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Author: ${news.author}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Title: ${news.title}'),
            Text('Description: ${news.description}'),
          ],
        ),
      ),
    );
  }
}
