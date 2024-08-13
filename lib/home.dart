import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> colors = [
    Colors.orange,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink
  ];
  Color selectedColor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Picker"),
        backgroundColor: selectedColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 280,
            width: double.maxFinite,
            color: selectedColor,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              colors.length,
              (index) {
                if (index == colors.length - 1) {
                  return ColorCard(
                    isLast: true,
                    isSelected: selectedColor == colors[index],
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => SingleChildScrollView(
                                child: AlertDialog(
                                  title: const Text("Choose color"),
                                  content: ColorPicker(
                                    pickerColor: selectedColor,
                                    onColorChanged: (color) {
                                      selectedColor = color;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ));
                    },
                    color: colors[index],
                  );
                } else {
                  return ColorCard(
                    isSelected: selectedColor == colors[index],
                    onTap: () {
                      selectedColor = colors[index];
                      setState(() {});
                    },
                    color: colors[index],
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
    required this.color,
    this.onTap,
    this.isSelected = false,
    this.isLast = false,
  });
  final Color color;
  final bool isSelected;
  final bool isLast;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: isLast
            ? const Icon(
                Icons.collections,
                color: Colors.white,
              )
            : isSelected
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : null,
      ),
    );
  }
}
