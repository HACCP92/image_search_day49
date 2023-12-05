import 'package:flutter/material.dart';
import 'package:image_search_day49/domain/model/photo.dart';

class DetailScreen extends StatelessWidget {
  final Photo photo;
  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('디테일 페이지'),
      ),
      body: Column(
        children: [
          Hero(
            tag: photo.id,
            child: Image.network(
              photo.webformatURL,
              fit: BoxFit.cover,
            ),
          ),
          Text('조회수: ${photo.views}'),
        ],
      ),
    );
  }
}
