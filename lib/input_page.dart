import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/reusable_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomButtonHeight = 80.0;
const activeCardColor = Color(0xFF1d1e33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum genderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  genderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = genderType.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == genderType.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = genderType.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == genderType.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}
