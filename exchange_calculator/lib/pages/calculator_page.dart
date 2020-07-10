import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:exchangecalculator/models/calculator_logic.dart';
import 'package:exchangecalculator/Util/neu_calculator_button.dart';
import 'package:exchangecalculator/Util/neumorphic_theme.dart';
import 'package:provider/provider.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<Calculator>(context);
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Expanded(child: SizedBox(height: 150)),
            ButtonRow(children: [
              NeuCalculatorButton(
                text: calculator.value.toString(),
                onPressed: null,
                isPill: true,
              ),
              NeuCalculatorButton(
                text: 'AC',
                textColor: kRed,
                onPressed: calculator.reset,
              ),
            ]),
            ButtonRow(
              children: [
                NeuCalculatorButton(
                  text: '7',
                  onPressed: () => calculator.setValue(7),
                ),
                NeuCalculatorButton(
                  text: '8',
                  onPressed: () => calculator.setValue(8),
                ),
                NeuCalculatorButton(
                  text: '9',
                  onPressed: () => calculator.setValue(9),
                ),
                NeuCalculatorButton(
                  text: '÷',
                  textColor: kOrange,
                  textSize: 45,
                  onPressed: calculator.divide,
                  isChosen: calculator.currentVariable is CalculatorDivide,
                ),
              ],
            ),
            ButtonRow(
              children: [
                NeuCalculatorButton(
                  text: '4',
                  onPressed: () => calculator.setValue(4),
                ),
                NeuCalculatorButton(
                  text: '5',
                  onPressed: () => calculator.setValue(5),
                ),
                NeuCalculatorButton(
                  text: '6',
                  onPressed: () => calculator.setValue(6),
                ),
                NeuCalculatorButton(
                  text: 'x',
                  textColor: kOrange,
                  onPressed: calculator.multiply,
                  isChosen: calculator.currentVariable is CalculatorMultiply,
                ),
              ],
            ),
            ButtonRow(
              children: [
                NeuCalculatorButton(
                  text: '1',
                  onPressed: () => calculator.setValue(1),
                ),
                NeuCalculatorButton(
                  text: '2',
                  onPressed: () => calculator.setValue(2),
                ),
                NeuCalculatorButton(
                  text: '3',
                  onPressed: () => calculator.setValue(3),
                ),
                NeuCalculatorButton(
                  text: '-',
                  textColor: kOrange,
                  textSize: 50,
                  onPressed: calculator.deduct,
                  isChosen: calculator.currentVariable is CalculatorDeduct,
                ),
              ],
            ),
            ButtonRow(
              children: [
                NeuCalculatorButton(
                  text: '0',
                  onPressed: () => calculator.setValue(0),
                ),
                NeuCalculatorButton(
                  text: '.',
                  onPressed: () {},
                ),
                NeuCalculatorButton(
                  text: '=',
                  textColor: kOrange,
                  textSize: 45,
                  onPressed: calculator.showResult,
                ),
                NeuCalculatorButton(
                  text: '+',
                  textColor: kOrange,
                  textSize: 45,
                  onPressed: calculator.add,
                  isChosen: calculator.currentVariable is CalculatorAdd,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key key,
    @required this.children,
  }) : super(key: key);

  final List<NeuCalculatorButton> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}