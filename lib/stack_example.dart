import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Stack Example"),
      ),
      body: Container(
      margin: const EdgeInsets.all(30),
        color: Colors.orange,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                top: 50,
                left: 50,
               width: 200,
              height: 200,
              child: Container(
               
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
            Positioned(
              top: 75,
              left: 75,
               width: 200,
              height: 200,
              child: Container(
               
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
             Positioned(
              bottom: -20,
              left: -20,
               width: 100,
              height: 100,
              child: Container(
               
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.black,width: 2),
                  shape: BoxShape.circle,
               
                ),
              ),
            )
          ],
        ),
        
      ),
    );
  }
}
