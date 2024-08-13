import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("LayoutBuilder Example"),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          if(constraint.maxWidth>600){
            return const Center(child: Text("Large Screen"),);
          }else{
            return const Center(child: Text("Small Screen"),);
          }
        },
      ),
    );
  }
}