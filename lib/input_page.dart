import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/card.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isMaleSelected = false;
  int height = 170;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'BMI Calculator',
          style: textTheme.bodyMedium,
        ),
        centerTitle: false,
        titleSpacing: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isMaleSelected = true;
                    });
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: AppCard(
                    borderSide: isMaleSelected
                        ? const BorderSide(color: Colors.white70, width: 3)
                        : BorderSide.none,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.male,
                          color: Colors.orange,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Male',
                          style: isMaleSelected
                              ? textTheme.bodySmall
                              : textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isMaleSelected = false;
                    });
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: AppCard(
                      borderSide: isMaleSelected == false
                          ? const BorderSide(color: Colors.white70, width: 3)
                          : BorderSide.none,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.female,
                            color: Colors.pinkAccent,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Female',
                            style: isMaleSelected == false
                                ? textTheme.bodySmall
                                : textTheme.labelSmall,
                          ),
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AppCard(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Height',
                      style: textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    NumberPicker(
                        minValue: 120,
                        maxValue: 220,
                        value: height,
                        selectedTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 24),
                        textStyle: const TextStyle(
                            color: Colors.white54, fontSize: 16),
                        axis: Axis.horizontal,
                        itemCount: 5,
                        itemWidth: 60,
                        onChanged: (newValue) {
                          setState(() {
                            height = newValue;
                          });
                        }),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppCard(child: Column()),
                const SizedBox(
                  width: 10,
                ),
                AppCard(child: Column()),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Text(
          'BMI',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
