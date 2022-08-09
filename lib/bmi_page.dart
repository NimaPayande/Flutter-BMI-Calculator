import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/card.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key? key}) : super(key: key);

  @override
  State<BmiPage> createState() => _InputPageState();
}

class _InputPageState extends State<BmiPage> {
  bool isMaleSelected = false;
  int height = 170;
  int weight = 60;
  int age = 18;
  void ageIncrement() {
    setState(() {
      age++;
    });
  }

  void ageDecrement() {
    setState(() {
      age--;
    });
  }

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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMaleSelected = true;
                    });
                  },
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMaleSelected = false;
                    });
                  },
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(
                          5,
                          (index) => Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 29),
                                height: index == 2 ? 30 : 20,
                                width: 2,
                                color:
                                    index == 2 ? Colors.white : Colors.white54,
                              )),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppCard(
                    child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      'Wieght',
                      style: textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 80,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.18),
                          border: Border.all(
                              width: 2, color: Colors.grey.withOpacity(.3)),
                          borderRadius: BorderRadius.circular(30)),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          const Positioned(
                            bottom: 60,
                            child: RotatedBox(
                              quarterTurns: 45,
                              child: Icon(
                                Icons.play_arrow_rounded,
                                size: 30,
                              ),
                            ),
                          ),
                          Center(
                            child: NumberPicker(
                                minValue: 10,
                                maxValue: 150,
                                value: weight,
                                itemWidth: 40,
                                selectedTextStyle: const TextStyle(
                                    color: Colors.white, fontSize: 24),
                                textStyle: const TextStyle(
                                    color: Colors.white54, fontSize: 16),
                                axis: Axis.horizontal,
                                onChanged: (newValue) {
                                  setState(() {
                                    weight = newValue;
                                  });
                                }),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
                const SizedBox(
                  width: 10,
                ),
                AppCard(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Age',
                      style: textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            ageDecrement();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.white54, width: 3)),
                            child: Center(
                              child: Text(
                                '-',
                                style: textTheme.labelSmall,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '$age',
                          style: textTheme.bodyLarge,
                        ),
                        InkWell(
                          onTap: () {
                            ageIncrement();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.white54, width: 3)),
                            child: Center(
                              child: Text(
                                '+',
                                style: textTheme.labelSmall,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheet(
                    onClosing: () {},
                    builder: (context) {
                      return SizedBox(
                        height: 800,
                        child: Center(
                            child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Your BMI is:',
                              style: textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              calculateBMI(height, weight),
                              style: textTheme.bodyLarge,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              bmiResult(),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            Text(
                              bmiFeedBack(),
                              style: textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close',
                                  style: TextStyle(color: kbackgroundColor)),
                            )
                          ],
                        )),
                      );
                    });
              });
        },
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Text(
          'BMI',
          style:
              TextStyle(color: kbackgroundColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

double bmi = 18;
calculateBMI(int height, int weight) {
  bmi = weight / (height * height) * 10000;
  return bmi.toStringAsFixed(1);
}

bmiResult() {
  if (bmi < 18.5) {
    return '(Under Weight)';
  } else if (bmi >= 18.5 && bmi < 25) {
    return '(Normal)';
  } else if (bmi > 25 && bmi < 30) {
    return '(Over Weight)';
  } else {
    return '(Obese)';
  }
}

bmiFeedBack() {
  if (bmi < 18.5) {
    return 'You are under Weight';
  } else if (bmi >= 18.5 && bmi < 25) {
    return 'You are at a healthy weight.';
  } else if (bmi > 25 && bmi < 30) {
    return 'You are at overweight.';
  } else {
    return 'You are obese.';
  }
}
