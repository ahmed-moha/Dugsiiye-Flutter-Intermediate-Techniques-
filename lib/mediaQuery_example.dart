import 'package:flutter/material.dart';

class MediaQueryExapmle extends StatelessWidget {
  const MediaQueryExapmle({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery Example"),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),

      body: Column(
        children:  [
          Container(
            width: size.width/2,
            height: size.height/2,
            color: Colors.brown,
          )
        ],
      ),
    );
  }
}