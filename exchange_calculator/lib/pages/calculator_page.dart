import 'package:exchangecalculator/Util/currency_dialog.dart';
import 'package:exchangecalculator/Util/neu_currency_button.dart';
import 'package:exchangecalculator/Util/neu_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:exchangecalculator/models/calculator_logic.dart';
import 'package:exchangecalculator/Util/neu_calculator_button.dart';
import 'package:exchangecalculator/Util/neumorphic_theme.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  final _numbetFormat = NumberFormat.decimalPattern('en_us');
  bool isLightMode = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<void>.delayed(Duration.zero).then((_) {
        Provider.of<Calculator>(context, listen: false).initCurrency();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<Calculator>(context);
    calculator.setInitialRates(calculator.baseCurrency);
    isLightMode = MediaQuery.platformBrightnessOf(context) == Brightness.light;

    return Material(
      color: isLightMode ? kBackgroundColour : kDarkBackgroundColour,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                NeuIconButton(
                  icon: Icons.sync,
                  onPressed: () {
                    calculator.switchCurrency();
                  },
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ButtonRow(children: [
                        NeuCurrencyButton(
                          currency: calculator.baseCurrency,
                          textColor: isLightMode ? textBlack : textWhite,
                          onPressed: () {
                            CurrencyDialog().showCurrencyDialog(context)
                                .then((currency) {
                              if (currency != null) {
                                calculator.changeBaseCurrency(currency);
                              }
                            });
                          },
                        ),
                        NeuCalculatorButton(
                          text: _numbetFormat.format(calculator.value),
                          textColor: isLightMode ? textBlack : textWhite,
                          onPressed: null,
                          widthRatio: 3.5,
                        ),
                      ]),
                      ButtonRow(children: [
                        NeuCurrencyButton(
                          currency: calculator.targetCurrency,
                          textColor: isLightMode ? textBlack : textWhite,
                          onPressed: () {
                            CurrencyDialog().showCurrencyDialog(context)
                                .then((currency) {
                              if (currency != null) {
                                calculator.changeTargetCurrency(currency);
                              }
                            });
                          },
                        ),
                        NeuCalculatorButton(
                          text: _numbetFormat.format(calculator.targetValue),
                          textColor: isLightMode ? textBlack : textWhite,
                          onPressed: null,
                          widthRatio: 3.5,
                        ),
                      ]),
                    ],
                  ),
                )
              ],
            ),
            Expanded(child: SizedBox(height: 150)),
            ButtonRow(children: [
              NeuCalculatorButton(
                text: _numbetFormat.format(calculator.value),
                textColor: isLightMode ? textBlack : textWhite,
                onPressed: null,
                widthRatio: 3.9,
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
                  textColor: isLightMode ? textBlack : textWhite,
                  onPressed: () => calculator.setValue(7),
                ),
                NeuCalculatorButton(
                  text: '8',
                  textColor: isLightMode ? textBlack : textWhite,
                  onPressed: () => calculator.setValue(8),
                ),
                NeuCalculatorButton(
                  text: '9',
                  textColor: isLightMode ? textBlack : textWhite,
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
                  textColor: isLightMode ? textBlack : textWhite,
                  onPressed: () => calculator.setValue(4),
                ),
                NeuCalculatorButton(
                  text: '5',
                  textColor: isLightMode ? textBlack : textWhite,
                  onPressed: () => calculator.setValue(5),
                ),
                NeuCalculatorButton(
                  text: '6',
                  textColor: isLightMode ? textBlack : textWhite,
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
                  textColor: isLightMode ? textBlack : textWhite,
                  onPressed: () => calculator.setValue(1),
                ),
                NeuCalculatorButton(
                  text: '2',
                  textColor: isLightMode ? textBlack : textWhite,
                  onPressed: () => calculator.setValue(2),
                ),
                NeuCalculatorButton(
                  text: '3',
                  textColor: isLightMode ? textBlack : textWhite,
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
                  textColor: isLightMode ? textBlack : textWhite,
                  onPressed: () => calculator.setValue(0),
                ),
                NeuCalculatorButton(
                  text: '.',
                  textColor: isLightMode ? textBlack : textWhite,
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

  final List<Widget> children;

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
