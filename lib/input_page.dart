import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const bottomContainerHeight = 80.0; //size for bottom button
const activeCardColour = Color(0xFF1D1E33); //active card colour constant
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),
                ),
              ),
              Expanded(
                child: ReusableCard(colour: activeCardColour,
                cardChild: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE',),),
              ),
            ],
          )),
          // Expanded(
          //   child: ReusableCard(colour: activeCardColour),
          // ),
          Expanded(
              child: Row(
            children: [
              // Expanded(
              //   child: ReusableCard(colour: activeCardColour),
              // ),
              // Expanded(
              //   child: ReusableCard(colour: activeCardColour),
              // ),
            ],
          )),
          Container(
            decoration: BoxDecoration(
              color: bottomContainerColour,
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.only(top: 10.0, bottom: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}



