import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class WheelScreen extends StatefulWidget {
  const WheelScreen({super.key});

  @override
  State<WheelScreen> createState() => _WheelScreenState();
}

class _WheelScreenState extends State<WheelScreen> {
  StreamController<int> controller = StreamController<int>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wheel App"),
      ),
      body: FortuneWheel(
        selected: controller.stream,
        physics: CircularPanPhysics(
          duration: const Duration(seconds: 1),
          curve: Curves.decelerate,
        ),
        onFling: () {
          controller.add(1);
        },
        items: const [
          FortuneItem(child: Text('1')),
          FortuneItem(child: Text('2')),
          FortuneItem(child: Text('3')),
          FortuneItem(child: Text('4')),
          FortuneItem(child: Text('5')),
          FortuneItem(child: Text('6')),
        ],
      ),
    );
  }
}
