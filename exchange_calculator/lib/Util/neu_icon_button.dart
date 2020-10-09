import 'package:flutter/material.dart';
import 'package:exchangecalculator/Util/concave_decoration.dart';
import 'package:exchangecalculator/Util/neumorphic_theme.dart';
import 'package:provider/provider.dart';

class NeuIconButton extends StatefulWidget {
  NeuIconButton({
    Key key,
    @required this.icon,
    this.textColor,
    this.textSize,
    this.isPill = false,
    @required this.onPressed,
    this.isChosen = false,
  }) : super(key: key);

  final bool isChosen;
  final bool isPill;
  final VoidCallback onPressed;
  final IconData icon;
  final Color textColor;
  final double textSize;

  @override
  _NeuIconButtonState createState() => _NeuIconButtonState();
}

class _NeuIconButtonState extends State<NeuIconButton> {
  bool _isPressed = false;

  @override
  void didUpdateWidget(NeuIconButton oldWidget) {
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
    final squareSideLength = width / 12;
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
              child: Icon(
                widget.icon,
                color: neumorphicTheme.isDark ? textWhite : textBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
