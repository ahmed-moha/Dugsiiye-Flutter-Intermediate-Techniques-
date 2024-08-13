import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galler_app/image_model.dart';
import 'package:galler_app/image_view.dart';
import 'package:galler_app/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with AfterLayoutMixin {
  List<ImageModel> images = [];
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery App"),
        backgroundColor: Colors.orange,
        actions: [
          PopupMenuButton(
              itemBuilder: (_) => [
                    PopupMenuItem(
                      onTap: () => SystemNavigator.pop(),
                      child: const Text("Exit"),
                    )
                  ])
        ],
      ),
      body: Builder(builder: (context) {
        if (isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (images.isEmpty) {
          return const Center(
            child: Text("No Images"),
          );
        } else {
          return GridView.builder(
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ImageView(url: images[index].image ?? ""),
                ),
              ),
              child: Image.network(
                images[index].image ?? "",
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      }),
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    getImage();
  }

  getImage() async {
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 4));
    images = await HomeProvider().getImages();

    isLoading = false;
    setState(() {});
  }
}
