import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Example"),
        elevation: 0,
        backgroundColor: Colors.purple,
      ),

      body:Column(
        children:  [
          Expanded(
            flex: 20,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.cyan,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ),
                 Expanded(
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
           Expanded(
            flex:8 ,
            child: Container(
              color: Colors.orange,
            ),
          ),
        ],
      )
    );
  }
}