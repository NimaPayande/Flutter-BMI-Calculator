import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/card.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isMaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'BMI Calculator',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        centerTitle: false,
        titleSpacing: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isMaleSelected = true;
                    });
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: AppCard(
                    height: 190,
                    width: 180,
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
                              ? Theme.of(context).textTheme.bodySmall
                              : Theme.of(context).textTheme.labelSmall,
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
                      height: 190,
                      width: 180,
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
                                ? Theme.of(context).textTheme.bodySmall
                                : Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
