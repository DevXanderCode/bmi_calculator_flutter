// import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool maleSelected = false;
  bool femaleSelected = false;

  // Color maleCardColor = maleSelected ? activeCardColor : inactiveCardColor;
  // Color femaleCardColor = femaleSelected ? activeCardColor : inactiveCardColor;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == activeCardColor) {
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   } else {
  //     if (femaleCardColor == activeCardColor) {
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // updateColor(Gender.male);
                          maleSelected = !maleSelected;
                          femaleSelected = false;
                        });
                      },
                      child: ReusableCard(
                        colour:
                            maleSelected ? activeCardColor : inactiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // updateColor(Gender.female);
                          maleSelected = false;
                          femaleSelected = !femaleSelected;
                        });
                      },
                      child: ReusableCard(
                        colour: femaleSelected
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
