import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return PhotoView(imageProvider: NetworkImage(url));
  }
}
