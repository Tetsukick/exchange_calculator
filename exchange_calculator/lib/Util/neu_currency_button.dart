import 'package:exchangecalculator/models/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:exchangecalculator/Util/concave_decoration.dart';
import 'package:exchangecalculator/Util/neumorphic_theme.dart';
import 'package:provider/provider.dart';

class NeuCurrencyButton extends StatefulWidget {
  NeuCurrencyButton({
    Key key,
    @required this.currency,
    this.textColor,
    this.textSize,
    this.isPill = false,
    @required this.onPressed,
    this.isChosen = false,
  }) : super(key: key);

  final bool isChosen;
  final bool isPill;
  final VoidCallback onPressed;
  final Currency currency;
  final Color textColor;
  final double textSize;

  @override
  _NeuCurrencyButtonState createState() => _NeuCurrencyButtonState();
}

class _NeuCurrencyButtonState extends State<NeuCurrencyButton> {
  bool _isPressed = false;

  @override
  void didUpdateWidget(NeuCurrencyButton oldWidget) {
    if (oldWidget.isChosen != widget.isChosen) {
      setState(() => _isPressed = widget.isChosen);
    }
    super.didUpdateWidget(oldWidget);
  }

  void _onPointerDown(PointerDownEvent event) {
    if (widget.onPressed == null) { return; }
    setState(() => _isPressed = true);
    widget.onPressed();
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() => _isPressed = widget.isChosen);
  }

  @override
  Widget build(BuildContext context) {
    final neumorphicTheme = Provider.of<NeumorphicTheme>(context);
    final width = MediaQuery.of(context).size.width;
    final squareSideLength = width / 6;
    final buttonWidth = squareSideLength * (widget.isPill ? 3.9 : 1);
    final buttonSize = Size(buttonWidth, squareSideLength);

    final innerShadow = ConcaveDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonSize.width),
      ),
      colors: neumorphicTheme.innerShadowColors,
      depression: 10,
    );

    final outerShadow = BoxDecoration(
      border: Border.all(color: neumorphicTheme.borderColor),
      borderRadius: BorderRadius.circular(buttonSize.width),
      color: neumorphicTheme.buttonColor,
      boxShadow: neumorphicTheme.outerShadow,
    );

    return SizedBox(
      height: buttonSize.height,
      width: buttonSize.width,
      child: Listener(
        onPointerDown: _onPointerDown,
        onPointerUp: _onPointerUp,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 50),
              padding: EdgeInsets.all(width / 12),
              decoration: _isPressed ? innerShadow : outerShadow,
            ),
            Align(
              alignment: Alignment(widget.isPill ? 0.8 : 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    widget.currency.assetPath,
                    width: buttonSize.width / 2,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    widget.currency.unit,
                    style: GoogleFonts.montserrat(
                      fontSize: widget.textSize ?? 16,
                      fontWeight: FontWeight.normal,
                      color: widget.textColor ??
                          Theme.of(context).textTheme.bodyText1.color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
